require 'rails_helper'

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    Todo.create!(title: "Buy a cat", email: "someone_else_email@gmail.com")

    sign_in_as "someone_email@gmail.com"

    expect(page).not_to have_css ".todos li", text: "Buy a cat"
  end
end
