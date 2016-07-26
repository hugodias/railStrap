class CreateUserService < GoodServices::Base
  rescuable_from ActiveRecord::RecordInvalid
  attr_reader :email, :password

  def initialize(params)
    @email    = params[:email]
    @password = params[:password]
    @record   = User.new(email: email,
                         password: password,
                         admin: params[:admin])
  end

  def perform
    @record.save!
  end
end
