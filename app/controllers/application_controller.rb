require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  include Clearance::Controller
  include Pundit
  before_action :require_login

  protect_from_forgery
end
