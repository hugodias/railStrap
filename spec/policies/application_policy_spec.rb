require "spec_helper"

describe ApplicationPolicy do

  subject { described_class }

  let(:user) { User.new }

  permissions :index?, :show?, :create?, :new?, :update?, :edit?, :destroy? do
    it { should_not permit(user, OpenStruct.new) }
  end
end
