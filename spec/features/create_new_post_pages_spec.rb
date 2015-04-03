require "rails_helper"

describe "the create new post process" do
  let (:user) { FactoryGirl.create(:user) }

  before do
    login(user)
  end

  it "creates a new post" do
    click_on "Create a new blog post"
    fill_in "Title", :with => "Test Title"
    fill_in "Entry", :with => "Test Entry"
    click_on "Create Post"
    expect(page).to have_content "created"
  end

  it "throws an error when the form isn't filled out" do
    click_on "Create a new blog post"
    click_on "Create Post"
    expect(page).to have_content "errors"
  end
end
