require 'spec_helper'

describe User do
  it "should create a user given valid input" do
    @user = Factory.build(:user)
    @user.save
    @user.should be_valid
  end
  
  it "should not create a user given an incorrect security code" do
    @user = Factory.build(:user, :security_code => "nope")
    @user.save
    @user.should_not be_valid
  end
  
  it { should validate_acceptance_of(:terms_of_service) }
    
end
