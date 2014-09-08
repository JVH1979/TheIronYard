require 'rails_helper'

describe "create patient", type: :feature, js: true do
  it "should allow the creation of patient" do
    visit root_path
    click_link "Menu"
    click_link "Sign In"
    click_link "Sign up"
    click_button "Hospital Index >>"
    click_link "conway hospital"
    click_link "New Hospital"
    fill_in "Name", with: "test hospital"
    click_button "Create Hospital"
    click_link "test hospital"
    click_link "Create Patient Data"
    fill_in "First name", with: "John"
    fill_in "Last name", with: "Doe"
    fill_in "Ailment", with: "migraine"
    choose('Male')
    click_button "Create Patient"
    expect(page).to have_content(New Hospital)
    expect(page).to have_content(Edit)
  end
end