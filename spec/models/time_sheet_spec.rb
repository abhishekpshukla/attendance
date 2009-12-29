require 'spec_helper'

describe TimeSheet do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    TimeSheet.create!(@valid_attributes)
  end
end
