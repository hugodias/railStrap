require "spec_helper"

describe AdminDashboardsPolicy do

  subject { described_class }

  permissions :index? do
    it "denies access to visitors" do
      user = nil
      expect(subject).not_to permit(user)
    end

    it "denies access to non admin users" do
      user = FactoryGirl.create :user
      expect(subject).not_to permit(user)
    end

    it "grant access to admins" do
      user = FactoryGirl.create :user, :admin
      expect(subject).to permit(user)
    end
  end
end
