require "spec_helper"

describe CreateUserService do
  describe "when creating a user" do
    context "sucessefully" do
      let(:user_params) { { email:"foobar@example.com",
                            password: "123123123",
                            admin: true } }

      it "returns true if record is saved" do
        expect(CreateUserService.run(user_params)).to be true
      end

      it "should save user to database" do
        expect{ CreateUserService.run(user_params) }.to change{ User.count }.by(1)
      end

      it "should create an admin user" do
        service = CreateUserService.new(user_params)
        service.run
        expect(service.record.admin?).to be true
      end
    end

    context "unsuccessfully" do
      let(:invalid_params) { { email: "bla", password: nil } }

      it "returns false when record is not saved" do
        expect(CreateUserService.run(invalid_params)).to be false
      end

      it "raises an error if email or password is invalid" do
        expect{ CreateUserService.run!(invalid_params) }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end
end
