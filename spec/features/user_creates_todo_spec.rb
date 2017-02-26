require "rails_helper"


feature "User creates todo" do
  scenario "successfully" do
    sign_in
    click_on "New todo"
    fill_in "Title", with: "Wash the cat."
    click_on "Submit"
    expect(page).to have_css '.todos li', text: "Wash the cat."
  end
end
