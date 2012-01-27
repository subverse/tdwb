require "spec_helper"

describe VocsController do
  describe "routing" do

    it "routes to #index" do
      get("/vocs").should route_to("vocs#index")
    end

    it "routes to #new" do
      get("/vocs/new").should route_to("vocs#new")
    end

    it "routes to #show" do
      get("/vocs/1").should route_to("vocs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vocs/1/edit").should route_to("vocs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vocs").should route_to("vocs#create")
    end

    it "routes to #update" do
      put("/vocs/1").should route_to("vocs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vocs/1").should route_to("vocs#destroy", :id => "1")
    end

  end
end
