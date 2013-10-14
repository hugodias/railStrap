class UsersController < ApplicationController
  def show
    @user = User.where(:username => params[:username]).first
  end
end
