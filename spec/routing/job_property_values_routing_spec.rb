require "spec_helper"

describe JobPropertyValuesController do
  describe "routing" do

    it "routes to #index" do
      get("/job_property_values").should route_to("job_property_values#index")
    end

    it "routes to #new" do
      get("/job_property_values/new").should route_to("job_property_values#new")
    end

    it "routes to #show" do
      get("/job_property_values/1").should route_to("job_property_values#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job_property_values/1/edit").should route_to("job_property_values#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job_property_values").should route_to("job_property_values#create")
    end

    it "routes to #update" do
      put("/job_property_values/1").should route_to("job_property_values#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job_property_values/1").should route_to("job_property_values#destroy", :id => "1")
    end

  end
end
