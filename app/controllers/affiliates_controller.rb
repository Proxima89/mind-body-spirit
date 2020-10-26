class AffiliatesController < ApplicationController

    def index
        @title = 'Affiliate Program';
        @content = 'This is affiliate program';
    end

    def show
        @affiliate = Affiliate.find(params[:id])

    end

    def new
        @affiliate = Affiliate.new
    end


    def create
        # render plain: params[:affiliate].inspect
        @affiliate = Affiliate.new(affiliate_params)

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
        @affiliate.destroy

        redirect_to affiliates_path

    end

    private 
    def affiliate_params
        params.require(:affiliate).permit(:title, :body)
    end
end
