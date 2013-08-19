class SessionsController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create, :login]
  def new
  end

  def login
    @user = User.new
    if logged_in?
      redirect_to root_url
    elsif !logged_in? && cookies.signed[:user_id]
      user = User.auth_with_cookie(cookies.signed[:user_id])
      session[:user_id] = cookies.signed[:user_id]
      redirect_to root_url, :notice => "Welcome back!"
    elsif request.post?
      user = User.authenticate(
        params.has_key?(:email) ? params[:email] : nil,
        params[:password])
      if user
        if params[:remember_me] == 'yes'
          cookies.permanent.signed[:user_id] = user.id
        end
        session[:user_id] = user.id
        redirect_to root_url, :notice => "Logged in!"
      else
        redirect_to root_url, :notice => "Invalid email or password"
      end
    else
      render "home"
    end
  end

  def destroy
    session[:user_id] = nil
    cookies.delete :user_id
    redirect_to root_url, :notice => "Logged out!"
  end
end
