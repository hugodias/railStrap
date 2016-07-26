require "rails_helper"

RSpec.feature 'Admin create user' do
  let(:admin) { FactoryGirl.create :user, :admin }

  scenario "admin create a new user" do
    visit admin_root_path(as: admin)

    click_on "New user"

    fill_in "Email", with: "joker@example.com"
    fill_in "Password", with: ")cD)7%LIJh"

    click_on "Save new user"

    expect(page).to have_content I18n.t("users.success")
  end

end
