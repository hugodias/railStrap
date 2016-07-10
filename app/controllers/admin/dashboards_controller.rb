class Admin::DashboardsController < ApplicationController
  def index
    authorize :admin_dashboards, :index?
    @users = User.all
  end
end
