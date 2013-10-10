class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def manage

  end
end
