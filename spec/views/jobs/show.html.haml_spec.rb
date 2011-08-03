require 'spec_helper'

describe "jobs/show.html.haml" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :name => "Name",
      :user_id => 1,
      :job_comparer_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
