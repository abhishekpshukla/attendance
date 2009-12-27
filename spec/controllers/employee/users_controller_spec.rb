require 'spec_helper'

describe Employee::UsersController do

  #Delete these examples and add some real ones
  it "should use Employee::UsersController" do
    controller.should be_an_instance_of(Employee::UsersController)
  end


  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end
end
