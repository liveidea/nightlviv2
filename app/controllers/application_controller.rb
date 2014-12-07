class ApplicationController < ActionController::Base
	before_action :set_locale 

def set_locale
i18n.locale=params[:locale] || i18n.default_locale
end	
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
