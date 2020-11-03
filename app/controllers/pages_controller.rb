class PagesController < ApplicationController
    # before_action :authenticate_user!, only: [:home ]
    # skip_before_action :authenticate_user!, only: [ :index, :home, :body, :mind, :spirit]
    # before_action :authenticate_admin!, only: [:update, :create, :destroy, :edit, :new]
    # before_action :authenticate_user!, only: [:update, :create, :destroy, :edit, :new]
    def index
        @categories = Category.all
        cate = params[:cate]

        if !cate.nil?
            @affiliates = Affiliate.where(:category_id => cate)
         else
            @affiliates = Affiliate.all
        end

        @user = current_user

        # @affiliate = Affiliate.filter(params[:affiliate][:category])
      
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
