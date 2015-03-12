require 'rails_helper'

describe "Creating todo lists" do
  
  it "should create a todo list" do
  	visit "/todo_lists/new"

  	click_button "Create Todo list"

  	expect(page).to have_content('New Todo List')
  end

	
end