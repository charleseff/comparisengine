require 'spec_helper'

describe "job_property_values/show.html.haml" do
  before(:each) do
    @job_property_value = assign(:job_property_value, stub_model(JobPropertyValue,
      :job_id => 1,
      :job_property_id => 1,
      :value => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
