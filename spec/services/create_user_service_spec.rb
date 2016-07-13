require "spec_helper"

describe CreateUserService do
  describe "when creating a user" do
    context "sucessefully" do
      it "returns true if record is saved" do
        expect(CreateUserService.run).to be true
      end

      it "should save user to database" do
        expect{ CreateUserService.run }.to change{ User.count }.by(1)
      end

      it "should create an admin user" do
        service = CreateUserService.new("foobar@example.com", "123123123", true)
        service.run
        expect(service.record.admin?).to be true
      end
    end

    context "unsuccessfully" do
      let(:invalid_record) { {email: "bla", password: nil } }

      it "returns false when record is not saved" do
        expect(CreateUserService.run(invalid_record)).to be false
      end

      it "raises an error if email or password is invalid" do
        expect{ CreateUserService.run!(email: "bla", password: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end
end
