require 'spec_helper'

describe "job_comparers/new.html.haml" do
  before(:each) do
    assign(:job_comparer, stub_model(JobComparer,
      :name => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new job_comparer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_comparers_path, :method => "post" do
      assert_select "input#job_comparer_name", :name => "job_comparer[name]"
      assert_select "input#job_comparer_user_id", :name => "job_comparer[user_id]"
    end
  end
end
