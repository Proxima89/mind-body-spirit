class AffiliatesController < ApplicationController

    def index
        @title = 'Affiliate Program';
        @content = 'This is affiliate program';
    end

    def show
        @affiliate = Affiliate.find(params[:id])
    end

    def new
        
    end


    def create
        # render plain: params[:affiliate].inspect
        @affiliate = Affiliate.new(affiliate_params)

        @affiliate.save
        redirect_to @affiliate
    end

    private def affiliate_params
        params.require(:affiliate).permit(:title, :body)
    end
end
