require "rails_helper"

describe "the create new post process" do
  it "creates a new post" do
    visit posts_path
    click_on "Create a new blog post"
    fill_in "Title", :with => "Test Title"
    fill_in "Entry", :with => "Test Entry"
    click_on "Create Post"
    expect(page).to have_content "created"
  end

  it "throws an error when the form isn't filled out" do
    visit new_post_path
    click_on "Create Post"
    expect(page).to have_content "errors"
  end
end
