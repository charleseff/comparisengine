require 'spec_helper'

describe "job_comparers/edit.html.haml" do
  before(:each) do
    @job_comparer = assign(:job_comparer, stub_model(JobComparer,
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit job_comparer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_comparers_path(@job_comparer), :method => "post" do
      assert_select "input#job_comparer_name", :name => "job_comparer[name]"
      assert_select "input#job_comparer_user_id", :name => "job_comparer[user_id]"
    end
  end
end
