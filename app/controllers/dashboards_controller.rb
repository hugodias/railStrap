class DashboardsController < ApplicationController
  def index
    authorize :dashboards, :index?
  end
end
