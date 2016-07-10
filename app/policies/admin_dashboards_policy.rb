class AdminDashboardsPolicy < Struct.new(:user, :admin_dashboards)
  def index?
    user and user.admin?
  end
end
