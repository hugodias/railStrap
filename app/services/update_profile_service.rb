class UpdateProfileService < GoodServices::Base
  rescuable_from ActiveRecord::RecordInvalid
  attr_accessor :params
  attr_reader :user

  def initialize(user, params)
    @user   = user
    @params = params
  end

  def perform
    params.delete(:password) if params.fetch(:password).empty?
    user.update!(params)
  end
end
