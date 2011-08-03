require 'spec_helper'

describe "job_comparers/show.html.haml" do
  before(:each) do
    @job_comparer = assign(:job_comparer, stub_model(JobComparer,
      :name => "Name",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
