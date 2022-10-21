class ApplicationController < ActionController::Base
        # before_action :configure_permitted_parameters, if: :devise_controller?
        # include DeviseTokenAuth::Concerns::SetUserByToken

        # protected

        # def configure_permitted_parameters
        #         devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname, :email, :image])
        # end

        skip_before_action :verify_authenticity_token
end