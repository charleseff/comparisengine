require 'spec_helper'

describe "job_properties/index.html.haml" do
  before(:each) do
    assign(:job_properties, [
      stub_model(JobProperty,
        :name => "Name",
        :weight => 1
      ),
      stub_model(JobProperty,
        :name => "Name",
        :weight => 1
      )
    ])
  end

  it "renders a list of job_properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
