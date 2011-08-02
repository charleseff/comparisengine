require 'spec_helper'

describe "job_properties/edit.html.haml" do
  before(:each) do
    @job_property = assign(:job_property, stub_model(JobProperty,
      :name => "MyString",
      :weight => 1
    ))
  end

  it "renders the edit job_property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_properties_path(@job_property), :method => "post" do
      assert_select "input#job_property_name", :name => "job_property[name]"
      assert_select "input#job_property_weight", :name => "job_property[weight]"
    end
  end
end
