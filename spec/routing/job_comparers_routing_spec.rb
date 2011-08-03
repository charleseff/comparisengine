require "spec_helper"

describe JobComparersController do
  describe "routing" do

    it "routes to #index" do
      get("/job_comparers").should route_to("job_comparers#index")
    end

    it "routes to #new" do
      get("/job_comparers/new").should route_to("job_comparers#new")
    end

    it "routes to #show" do
      get("/job_comparers/1").should route_to("job_comparers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job_comparers/1/edit").should route_to("job_comparers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job_comparers").should route_to("job_comparers#create")
    end

    it "routes to #update" do
      put("/job_comparers/1").should route_to("job_comparers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job_comparers/1").should route_to("job_comparers#destroy", :id => "1")
    end

  end
end
