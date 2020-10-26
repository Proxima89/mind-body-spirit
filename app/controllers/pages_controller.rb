class PagesController < ApplicationController

    def index
        @affiliates = Affiliate.all
    end

end
