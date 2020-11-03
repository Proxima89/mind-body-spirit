class AffiliatesController < ApplicationController
    before_action :authenticate_admin!, only: [:update, :create, :destroy, :edit, :new]
    # before_action :authenticate_user!, only: [:update, :create, :destroy, :edit, :new]
    # before_action :set_affiliate, except: [:create, :update, :edit]
    # skip_before_action :authenticate_user!, only: [:show]
    # before_action :authenticate_user!, only: []
    # before_action :authenticate_admin!, only: [:index, :home, :body, :mind, :spirit]
    def index
        @user = current_user
        @affiliates = Affiliate.all 
        if params[:affiliate]
            @affiliate = Affiliate.filter(params[:affiliate][:category])
          else
            @affiliate = Affiliate.all
          end
    end

    def show
        @affiliate = Affiliate.find(params[:id])
        # @user = User.find(params[:id])
        @comment = Comment.all
    end

    def new
        @affiliate = Affiliate.new
    end


    def create
        @affiliate = Affiliate.new(affiliate_params)
        # @affiliate.user = current_user
        if (@affiliate.save)
            redirect_to @affiliate
        else
            render 'new'
        end
    end

    def edit 
        @affiliate = Affiliate.find(params[:id])
    end

    def update
        @affiliate = Affiliate.find(params[:id])

        if (@affiliate.update(affiliate_params))
            redirect_to @affiliate
        else
            render 'edit'
        end
    end

    def destroy
        @affiliate = Affiliate.find(params[:id])
        # @user = @affiliate.user
        @affiliate.destroy

        redirect_to affiliates_path
    end

    private 
    def affiliate_params
        params.require(:affiliate).permit(:title, :body, :category_id)
    end
end
