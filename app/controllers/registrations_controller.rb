class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create]

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |user|
        user.permit(:username, :email, :password, :password_confirmation)
      end
    end
  end
