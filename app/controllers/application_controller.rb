class ApplicationController < ActionController::Base
    # before_filter :authenticate_user!, only: [:index, :create]
    # before_action :configure_permitted_parameters, if: :devise_controller?
    # before_action :authenticate_admin!, only: [:update, :create, :edit, :new]
    before_action :authenticate_admin!, only: [:update, :create, :destroy, :edit, :new]
    def new
     
    end
   

    def configure_permitted_parameters
        # For additional fields in app/views/devise/registrations/new.html.erb
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end

    def authenticate_admin!
        authenticate_user!
        # redirect_to :user_session
        # , status: :forbidden unless current_user.admin?
    end

end
# def is_authorised
#     redirect_to root_path, alert: "You don't have permission..." unless current_user.id == @jobs_dev.user_id
# end