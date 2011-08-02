require "spec_helper"

describe JobPropertiesController do
  describe "routing" do

    it "routes to #index" do
      get("/job_properties").should route_to("job_properties#index")
    end

    it "routes to #new" do
      get("/job_properties/new").should route_to("job_properties#new")
    end

    it "routes to #show" do
      get("/job_properties/1").should route_to("job_properties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job_properties/1/edit").should route_to("job_properties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job_properties").should route_to("job_properties#create")
    end

    it "routes to #update" do
      put("/job_properties/1").should route_to("job_properties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job_properties/1").should route_to("job_properties#destroy", :id => "1")
    end

  end
end
