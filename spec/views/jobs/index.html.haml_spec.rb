require 'spec_helper'

describe "jobs/index.html.haml" do
  before(:each) do
    assign(:jobs, [
      stub_model(Job,
        :name => "Name",
        :user_id => 1,
        :job_comparer_id => 1
      ),
      stub_model(Job,
        :name => "Name",
        :user_id => 1,
        :job_comparer_id => 1
      )
    ])
  end

  it "renders a list of jobs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
