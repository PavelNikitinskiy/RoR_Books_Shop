class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :authorize
  protect_from_forgery with: :exception
  protected
    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please, Log in"
      end
    end
end
