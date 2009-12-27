require 'spec_helper'

describe Employee::DashboardsController do

  #Delete these examples and add some real ones
  it "should use Employee::DashboardsController" do
    controller.should be_an_instance_of(Employee::DashboardsController)
  end


  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end
end
