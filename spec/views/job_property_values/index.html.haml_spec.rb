require 'spec_helper'

describe "job_property_values/index.html.haml" do
  before(:each) do
    assign(:job_property_values, [
      stub_model(JobPropertyValue,
        :job_id => 1,
        :job_property_id => 1,
        :value => 1
      ),
      stub_model(JobPropertyValue,
        :job_id => 1,
        :job_property_id => 1,
        :value => 1
      )
    ])
  end

  it "renders a list of job_property_values" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
