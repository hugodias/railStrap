class ProfilePolicy < ApplicationPolicy
  def edit?
    user and user.profile.present?
  end

  def update?
    user and user.profile.present?
  end
end
