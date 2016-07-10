require 'rails_helper'

RSpec.describe User, type: :model do

  it "should create a profile when creating user" do
    user = FactoryGirl.create :user

    expect(user.profile.present?).to be true
  end
end
