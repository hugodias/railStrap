require "spec_helper"

describe CreateAdminService do
  it "creates an admin user" do
    service = CreateAdminService.new
    service.call
    expect(service.user.admin?).to be true
  end
end
