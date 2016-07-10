class PagesController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    authorize :pages, :index?
  end
end
