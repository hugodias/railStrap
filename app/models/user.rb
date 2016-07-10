class User < ApplicationRecord
  include Clearance::User

  has_one :profile, dependent: :destroy

  accepts_nested_attributes_for :profile

  before_create :build_profile

  def name
    (first_name.present? or last_name.present?) ? "#{first_name} #{last_name}" : email
  end

end
