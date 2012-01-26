require "spec_helper"

describe LinkcategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/linkcategories").should route_to("linkcategories#index")
    end

    it "routes to #new" do
      get("/linkcategories/new").should route_to("linkcategories#new")
    end

    it "routes to #show" do
      get("/linkcategories/1").should route_to("linkcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/linkcategories/1/edit").should route_to("linkcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/linkcategories").should route_to("linkcategories#create")
    end

    it "routes to #update" do
      put("/linkcategories/1").should route_to("linkcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/linkcategories/1").should route_to("linkcategories#destroy", :id => "1")
    end

  end
end
