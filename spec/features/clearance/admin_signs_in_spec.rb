require "rails_helper"
require "support/features/clearance_helpers"

RSpec.feature "Admin signs in" do
  scenario "with valid email and password" do
    sign_in_as_admin

    expect_user_to_be_signed_in
  end

  scenario "and is redirected to admins dashboard" do
    sign_in_as_admin

    expect(page).to have_css "#users"
  end

  private

  def sign_in_as_admin
    create_admin "admin@example.com", "pass123123"
    sign_in_with "admin@example.com", "pass123123"
  end

  def create_admin(email, password)
    FactoryGirl.create(:user, email: email, password: password, admin: true)
  end

  def expect_page_to_display_sign_in_error
    expect(page.body).to include(
      I18n.t("flashes.failure_after_create", sign_up_path: sign_up_path)
    )
  end
end
