class ProfilesController < ApplicationController
  before_action :set_user

  respond_to :html

  def edit
    authorize current_user.profile
  end

  def update
    authorize Profile
    @user = User.update(user_params)
    respond_with @user, location: -> { edit_profile_path }
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, profile_attributes: [:description])
  end

  def interpolation_options
    { resource_name: "User" }
  end
end
