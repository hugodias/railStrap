module Admin
  class DashboardsController < ApplicationController
    def index
      authorize :admin_dashboards, :index?
      @users = User.all
      @user = User.new
    end
  end
end
