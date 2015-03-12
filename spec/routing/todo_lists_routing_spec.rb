require "rails_helper"

describe TodoListsController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/todo_lists")).to route_to("todo_lists#index")
    end

    it "routes to #new" do
      expect(get("/todo_lists/new")).to route_to("todo_lists#new")
    end

    it "routes to #show" do
      expect(get("/todo_lists/1")).to route_to("todo_lists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get("/todo_lists/1/edit")).to route_to("todo_lists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post("/todo_lists")).to route_to("todo_lists#create")
    end

    it "routes to #update" do
      expect(put("/todo_lists/1")).to route_to("todo_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete("/todo_lists/1")).to route_to("todo_lists#destroy", :id => "1")
    end

  end
end
