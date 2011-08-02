require 'spec_helper'

describe "JobProperties" do
  describe "GET /job_properties" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get job_properties_path
      response.status.should be(200)
    end
  end
end
