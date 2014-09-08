require 'rails_helper'

describe "user registration", type: :feature, js: true do
  it "should allow user registration" do
    visit root_path
    click_link "Menu"
    click_link "Sign In"
    click_link "Sign up"
    fill_in "Email", with: "yo@test.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content("Hospital Index >>")
    expect(page).to have_content("Home")
    expect(page).to have_content("Welcome to Coastal Carolina Hospital System")
    expect(page).not_to have_content("Log In")
    expect(page).not_to have_content("party hard")
    expect(page).not_to have_content("patients")
  end
end
