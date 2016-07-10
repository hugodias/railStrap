require "spec_helper"

describe PagesPolicy do

  subject { described_class }

  permissions :index? do
    it "denies access to logged in users" do
      user = FactoryGirl.create :user
      expect(subject).not_to permit(user)
    end

    it "grants access to visitors" do
      user = nil
      expect(subject).to permit(user)
    end
  end
end
