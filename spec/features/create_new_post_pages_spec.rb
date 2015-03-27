require "rails_helper"

describe "the create new post process" do
  let (:user) { FactoryGirl.create(:user) }

  it "creates a new post" do
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    click_on "Create a new blog post"
    fill_in "Title", :with => "Test Title"
    fill_in "Entry", :with => "Test Entry"
    click_on "Create Post"
    expect(page).to have_content "created"
  end

  it "throws an error when the form isn't filled out" do
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    click_on "Create a new blog post"
    click_on "Create Post"
    expect(page).to have_content "errors"
  end
end
