require 'spec_helper'

describe User do
  it "should have a password" do
    user = FactoryGirl.create(:user)
    user.should be_an_instance_of(User)
    user.password.should_not be_nil
  end
  it "should have an email" do
      user = FactoryGirl.create(:user)
      user.should be_an_instance_of(User)
      user.email.should_not be_nil
    end
end
