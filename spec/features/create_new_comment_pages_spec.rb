require "rails_helper"

describe "the create new comment process" do
  let (:user) { FactoryGirl.create(:user) }
  let (:post) { FactoryGirl.create(:post) }

  it "creates a new comment on a post" do
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    visit post_path(post)
    click_on "Add a comment"
    fill_in "Author", :with => "Person's Name"
    fill_in "Text", :with => "Comment text."
    click_on "Create Comment"
    expect(page).to have_content "added"
  end

  it "throws an error when the form isn't filled out" do
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    visit post_path(post)
    visit new_post_comment_path(post)
    click_on "Create Comment"
    expect(page).to have_content "errors"
  end
end
