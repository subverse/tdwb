require "spec_helper"

describe GrammarsController do
  describe "routing" do

    it "routes to #index" do
      get("/grammars").should route_to("grammars#index")
    end

    it "routes to #new" do
      get("/grammars/new").should route_to("grammars#new")
    end

    it "routes to #show" do
      get("/grammars/1").should route_to("grammars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/grammars/1/edit").should route_to("grammars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/grammars").should route_to("grammars#create")
    end

    it "routes to #update" do
      put("/grammars/1").should route_to("grammars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/grammars/1").should route_to("grammars#destroy", :id => "1")
    end

  end
end
