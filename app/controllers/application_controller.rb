class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user, except: :sign_in
  def authenticate_user
    unless @user = User.find_by_id(session[:user_id])
      redirect_to users_sign_in_url
    end
  end
end
