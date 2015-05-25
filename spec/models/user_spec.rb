require 'spec_helper'

describe User do
  it "has a valid factory" do
    #create builds an instance of User and saves it to the DB
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a first name" do
    #We use build here to create a new instance of User
    #however, this new instance is not saved,
    #bypassing the validation that is in the User model
    #this is important to get the test to pass
    FactoryGirl.build(:user, first_name: nil).should_not be_valid
  end
  it "is invalid without a last name" do
    FactoryGirl.build(:user, last_name: nil).should_not be_valid
  end
  it "is invalid without an email address" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it "is invalid without a BU ID" do
    FactoryGirl.build(:user, bu_id: nil).should_not be_valid
  end
  it "is invalid without a pin" do
    FactoryGirl.build(:user, pin: nil).should_not be_valid
  end

  #add tests for:
  # "is valid without an assigned bike"
  # "is invalid without a total ride time"
  # "is invalid without a total number of rides"
  # when all of that code is fixed
  
end
