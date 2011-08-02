require 'spec_helper'

describe "job_properties/new.html.haml" do
  before(:each) do
    assign(:job_property, stub_model(JobProperty,
      :name => "MyString",
      :weight => 1
    ).as_new_record)
  end

  it "renders new job_property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_properties_path, :method => "post" do
      assert_select "input#job_property_name", :name => "job_property[name]"
      assert_select "input#job_property_weight", :name => "job_property[weight]"
    end
  end
end
