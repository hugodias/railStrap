module Admin
  class UsersController < ApplicationController
    respond_to :html

    def new
      authorize :admin_users, :new?
      @user = User.new
      respond_with @user
    end

    def create
      authorize :admin_users, :create?
      @user = User.create(user_params)
      @user.errors.add(:base, :invalid)
      respond_with @user, location: -> { admin_root_path }
    end

    def update
    end

    def destroy
    end

    private

    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
end
