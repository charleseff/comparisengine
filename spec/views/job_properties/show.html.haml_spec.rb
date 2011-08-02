require 'spec_helper'

describe "job_properties/show.html.haml" do
  before(:each) do
    @job_property = assign(:job_property, stub_model(JobProperty,
      :name => "Name",
      :weight => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
