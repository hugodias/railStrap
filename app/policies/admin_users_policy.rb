class AdminUsersPolicy < Struct.new(:user, :admin_users)
  def new?
    user && user.admin?
  end

  def create?
    user && user.admin?
  end
end
