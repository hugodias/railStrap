require "rails_helper"
require "support/features/clearance_helpers"

RSpec.feature "User updates profile" do
  let(:user) { FactoryGirl.create :user }

  before do
    sign_in_with user.email, user.password
    visit edit_profile_path
  end

  scenario "user update it email" do
    fill_in "Email", with: "brandnew@example.com"

    click_on "Save profile"

    expect(page).to have_content "brandnew@example.com"
  end

  scenario "user update it first and last names" do
    fill_in "First name", with: "Hugo"
    fill_in "Last name", with: "Dias"

    click_on "Save profile"

    expect(page).to have_content "Hugo Dias"
  end

  scenario "user update it description" do
    description = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui rem alias numquam provident repellendus ratione? Ut voluptates, maxime veritatis impedit modi voluptatum, necessitatibus ipsa excepturi ipsam."

    fill_in "Description", with: description

    click_on "Save profile"

    expect(page).to have_content description
  end
end
