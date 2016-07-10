require "rails_helper"
require "support/features/clearance_helpers"

RSpec.feature "Visitor visits homepage" do
  scenario "without being logged in" do
    visit root_path

    expect(page).to have_content "Sign in"
  end

  private

  def create_user(email, password)
    FactoryGirl.create(:user, email: email, password: password)
  end

  def expect_page_to_display_sign_in_error
    expect(page.body).to include(
      I18n.t("flashes.failure_after_create", sign_up_path: sign_up_path)
    )
  end
end
