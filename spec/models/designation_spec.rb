require 'spec_helper'

describe Designation do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Designation.create!(@valid_attributes)
  end
end
