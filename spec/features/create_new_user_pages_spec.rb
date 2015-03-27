require "rails_helper"

describe "the create new user process" do
  it "creates a new user" do
    visit root_path
    click_on "Sign up"
    fill_in "Username", :with => "username"
    fill_in "Email", :with => "username@domain.tld"
    fill_in "Password", :with => "password1234"
    fill_in "Password confirmation", :with => "password1234"
    click_on "Submit"
    expect(page).to have_content "username"
  end

  it "throws an error when the form isn't filled out" do
    visit new_user_path
    click_on "Submit"
    expect(page).to have_content "errors"
  end
end
