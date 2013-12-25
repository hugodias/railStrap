class RegistrationsController < Devise::RegistrationsController
  def update
    @user = User.find(current_user.id)

    successfully_updated = if needs_password?(@user, params)
                             @user.update_with_password(user_params)
                           else
                             # remove the virtual current_password attribute update_without_password
                             # doesn't know how to ignore it
                             params[:user].delete(:current_password)
                             @user.update_without_password(user_params)
                           end

    if successfully_updated
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end
  end

  private

  # check if we need password to update user data
  # ie if password or email was changed
  # extend this as needed
  def needs_password?(user, params)
    user.email != params[:user][:email] ||
        params[:user][:password].present? ||
        user.username != params[:user][:username]
  end

  # Using a private method to encapsulate the permissible parameters is
  # just a good pattern since you'll be able to reuse the same permit
  # list between create and update. Also, you can specialize this method
  # with per-user checking of permissible attributes.
  def user_params
    params.require(:user).permit(:avatar, :email, :current_password, :password, :password_confirmation, :username)
  end

end
