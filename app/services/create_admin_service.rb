class CreateAdminService
  attr_reader :user

  def initialize(email="admin@myservice.com", password="ch4ng3th1s")
    @email = email
    @password = @password
  end

  def call
    @user = User.new(email: @email, password: @password, admin: true)
    return @user.save
  end
end
