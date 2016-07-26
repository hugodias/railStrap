require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  responders :flash, :http_cache

  include Clearance::Controller
  include Pundit
  before_action :require_login

  protect_from_forgery
end
