require 'rails_helper'

describe "Creating todo lists" do
  
  it "should create a todo list" do
  	expect(TodoList.count).to eq(0)

  	visit "/todo_lists"

  	click_link "New Todo list"  	
  	expect(page).to have_content('New Todo List')

    fill_in "Title", with: "My TodoList"
     
    click_button "Create Todo list"

  	expect(TodoList.count).to eq(1)
  end

  it "should not create a todo list withou a title" do
  	visit "/todo_lists"

  	click_link "New Todo list"  	
  	expect(page).to have_content('New Todo List')

    fill_in "Title", with: ""
     
    click_button "Create Todo list"


  	expect(page).to have_content("error")
  end
	
end