require 'rails_helper'

describe "create hospital", type: :feature, js: true do
  it "should allow the creation of hospital" do
    visit root_path
    click_link "Menu"
    click_link "Sign In"
    click_link "Sign up"
    click_button "Hospital Index >>"
    click_link "New Hospital"
    fill_in "Name", with: "test hospital"
    click_button "Create Hospital"
    expect(page).to have_content(New Hospital)
    expect(page).to have_content(Edit)
  end
end