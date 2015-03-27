require "rails_helper"

describe "the edit existing user process" do
  let (:user) { FactoryGirl.create(:user) }

  it "edits an existing user" do
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    visit user_path(user)
    click_on "Edit your account information"
    click_on "Submit"
    expect(page).to have_content "updated"
  end
end
