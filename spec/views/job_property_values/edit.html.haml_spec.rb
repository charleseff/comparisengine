require 'spec_helper'

describe "job_property_values/edit.html.haml" do
  before(:each) do
    @job_property_value = assign(:job_property_value, stub_model(JobPropertyValue,
      :job_id => 1,
      :job_property_id => 1,
      :value => 1
    ))
  end

  it "renders the edit job_property_value form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_property_values_path(@job_property_value), :method => "post" do
      assert_select "input#job_property_value_job_id", :name => "job_property_value[job_id]"
      assert_select "input#job_property_value_job_property_id", :name => "job_property_value[job_property_id]"
      assert_select "input#job_property_value_value", :name => "job_property_value[value]"
    end
  end
end
