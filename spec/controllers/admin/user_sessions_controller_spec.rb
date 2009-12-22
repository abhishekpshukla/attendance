require 'spec_helper'

describe Admin::UserSessionsController do

  #Delete these examples and add some real ones
  it "should use Admin::UserSessionsController" do
    controller.should be_an_instance_of(Admin::UserSessionsController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
end
