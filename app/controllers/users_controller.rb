class UsersController < ApplicationController
  def sign_in
    if request.get? && User.where(id: session[:user_id]).exists?
      redirect_to users_index_url
    elsif request.post?
      if user = User.find_by_email_and_password(params[:email], params[:password])
        session[:user_id] = user.id
        redirect_to users_index_url
      else
        redirect_to users_sign_in_path
      end
    end
  end

  def index
    @post = @user.posts.new
  end

  def sign_out

  end
end
