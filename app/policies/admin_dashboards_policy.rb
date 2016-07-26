class AdminDashboardsPolicy < Struct.new(:user, :admin_dashboards)
  def index?
    user && user.admin?
  end
end
