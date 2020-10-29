class CommentsController < ApplicationController
    # before_action :authenticate_admin!, only: [:update, :create, :destroy, :edit, :new]
    # before_action :authenticate_user!, only: [:update, :create, :destroy, :edit, :new]
    # before_action :authenticate_user!, only: [:destroy, :create]
    before_action :authenticate_admin!, only: [:create, :update, :destroy, :edit]
    def create
        @affiliate = Affiliate.find(params[:affiliate_id])
        @comment = @affiliate.comments.create(comment_params)
        redirect_to affiliate_path(@affiliate)
    end
    def new
  
    end
    
    def show
        @comment.user = current_user
    end

    def destroy
        @affiliate = Affiliate.find(params[:affiliate_id])
        @comments = @affiliate.comments.find(params[:id])
        @comments.destroy
        redirect_to affiliate_path(@affiliate)
    end

    private def comment_params
        params.require(:comment).permit(:username, :body)
    end
end
