require 'rails_helper'

describe "TodoLists" do
  describe "GET /todo_lists" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get todo_lists_path
      expect(response.status).to be(200)
    end
  end
end
