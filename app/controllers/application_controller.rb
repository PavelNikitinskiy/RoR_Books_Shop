class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :authorize
  protect_from_forgery with: :exception

  protected
    def authorize
      unless authorized_user?
        redirect_to login_url, notice: "Please, Log in"
      end
    end
end
