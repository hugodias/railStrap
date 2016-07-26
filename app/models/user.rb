class User < ApplicationRecord
  include Clearance::User
  validates_presence_of :email
  validates_presence_of :password, on: :create

  def name
    first_name.present? || last_name.present? ? "#{first_name} #{last_name}" : email
  end
end
