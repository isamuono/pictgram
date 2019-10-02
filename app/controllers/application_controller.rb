class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  
  #include CommonActions
  
  helper_method :current_user, :logged_in?
  
  def current_user
    #@current_user ||= User.find_by(id: session[:user_id])
    @current_user = User.find_by(id: session[:user_id]) if @current_user.nil?
    return @current_user
    #return @current_user ? @current_user : @current_user = User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def login_check
    unless logged_in?
      flash[:alert] = "ログインしてください"
      redirect_to root_path
    end
  end
end