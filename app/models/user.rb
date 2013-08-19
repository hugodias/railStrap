class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_uniqueness_of :username

  def self.authenticate(email, password)

    user = User.is_a_valid_email(email) ? find_by_email(email) : find_by_username(email)

    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def self.auth_with_cookie(id)
    user = find_by_id(id)
    if user
      user
    else
      nil
    end
  end

  def self.is_a_valid_email(email)
    # Check the number of '@' signs.
    if email.count("@") != 1 then
      return false

    # We can now check the email using a simple regex.
    # You can replace the TLD's at the end with the TLD's you wish
    # to accept.
    elsif email =~ /^.*@.*(.com|.org|.net)$/ then
      return true
    else
      return false
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
