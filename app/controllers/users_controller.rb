class UsersController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:edit, :update, :destroy]
  # before_action :authenticate_user!, only: [:show]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end


def update
  respond_to do |format|
    if current_user.update(user_params)
      format.html { redirect_to current_user, notice: 'You siccessfully updated your profile.'}
    else
      format.html { render :edit }
    end
  end
end

private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password, 
  )
  end
end

