class CreateUserService < GoodServices::Base
  rescuable_from ActiveRecord::RecordInvalid
  attr_reader :email, :password

  def initialize(email="user@example.com", password="ch4ng3th1s", admin=false)
    @email    = email
    @password = password
    @record   = User.new(email: email, password: password, admin: admin)
  end

  def perform
    @record.save!
  end
end
