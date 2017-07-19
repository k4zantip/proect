class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    
    protected
    def configure_permitted_parameters
devise_parametres_sanitizer.for(sign_up) { |u| u.permit(:firstname, :lastname)}
    configure_permitted_parameters
devise_parametres_sanitizer.for(sign_in) { |u| u.permit(:firstname, :lastname)}
        configure_permitted_parameters
devise_parametres_sanitizer.for(account_update) { |u| u.permit(:firstname, :lastname)}
    end
end
