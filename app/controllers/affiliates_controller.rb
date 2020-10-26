class AffiliatesController < ApplicationController

    def affiliate
        @title = 'Affiliate Program';
    end

    def new
        
    end

    def create
        # render plain: params[:affiliate].inspect
    end

        
end
