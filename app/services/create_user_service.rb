class CreateUserService < GoodServices::Base
  rescuable_from ActiveRecord::RecordInvalid
  attr_reader :email, :password, :admin

  def initialize(params)
    @email    = params[:email]
    @password = params[:password]
    @admin    = params[:admin]
    @record   = User.new(email: email,
                         password: password,
                         admin: admin)
  end

  def perform
    @record.save!
  end
end
