class AffiliatesController < ApplicationController
    # before_action :set_affiliate, only: [:show, :edit, :update, :destroy]
    # before_action :authenticate_user!, except: [:show, :index]
    def index
        @user = current_user
        @affiliates = Affiliate.all 
    end

    def show
        @affiliate = Affiliate.find(params[:id])
        # @user = current_user

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
        params.require(:affiliate).permit(:title, :body)
    end
end
