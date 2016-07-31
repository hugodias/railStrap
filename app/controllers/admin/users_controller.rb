module Admin
  class UsersController < ApplicationController
    before_action :set_user, only: [:update, :destroy]
    respond_to :html

    def new
      authorize :admin_users, :new?
      @user = User.new
      respond_with @user
    end

    def create
      authorize :admin_users, :create?
      service = CreateUserService.new(user_params)
      service.record.errors.add(:base, :invalid)
      service.run
      respond_with service.record, location: -> { admin_root_path }
    end

    def update
    end

    def destroy
      respond_with @user.destroy, location: -> { admin_root_path }
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
end
