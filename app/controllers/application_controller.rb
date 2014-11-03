class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :auth_user

  def logout
    cookies.delete(:user)
    redirect_to root_path
  end

  private

  def auth_user
    if user_id = cookies[:user] and !user_id.blank?
      @current_user = User.find(user_id)
    elsif controller_name != 'users'
      redirect_to new_user_path
    end
  end
end
