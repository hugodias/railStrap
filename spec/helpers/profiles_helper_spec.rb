require 'rails_helper'

describe ProfilesHelper do
  describe "#render_profile_for" do
    it "returns an image" do
      user = User.new(email: "example@example.com")
      expect(helper.render_profile_for(user, 200)).to match(/gravatar.com\/avatar/)
    end
  end
end
