require 'spec_helper'

describe "/employee/dashboards/show" do
  before(:each) do
    render 'employee/dashboards/show'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/employee/dashboards/show])
  end
end
