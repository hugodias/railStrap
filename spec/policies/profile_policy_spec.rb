require "spec_helper"

describe ProfilePolicy do

  subject { described_class }

  permissions :edit?, :update? do
    it "danies access to visitors" do
      user = nil
      expect(subject).not_to permit(user, Profile)
    end

    it "grants access to logged users" do
      user = FactoryGirl.create :user
      expect(subject).to permit(user, Profile)
    end
  end
end
