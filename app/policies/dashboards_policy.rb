class DashboardsPolicy < Struct.new(:user, :dashboards)
  def index?
    true
  end
end
