require 'spec_helper'

describe "/employee/time_sheets/index" do
  before(:each) do
    render 'employee/time_sheets/index'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/employee/time_sheets/index])
  end
end
