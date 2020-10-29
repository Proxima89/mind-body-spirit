class PagesController < ApplicationController
    # before_action :authenticate_user!, only: [:home ]
    # skip_before_action :authenticate_user!, only: [ :index, :home, :body, :mind, :spirit]
    # before_action :authenticate_admin!, only: [:update, :create, :destroy, :edit, :new]
    # before_action :authenticate_user!, only: [:update, :create, :destroy, :edit, :new]
    def index
        @affiliates = Affiliate.all
    end    

    def body
        @affiliates = Affiliate.all
    end

    def spirit
        @affiliates = Affiliate.all
    end

    def mind
        @affiliates = Affiliate.all
    end

end
