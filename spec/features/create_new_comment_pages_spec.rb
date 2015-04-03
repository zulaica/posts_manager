require "rails_helper"

describe "the create new comment process" do
  let (:user) { FactoryGirl.create(:user) }
  let (:post) { FactoryGirl.create(:post, user: user) }

  before do
    login(user)
  end

  it "creates a new comment on a post" do
    visit post_path(post)
    click_on "Add a comment"
    fill_in "Text", :with => "Comment text."
    click_on "Create Comment"
    expect(page).to have_content "added"
  end

  it "throws an error when the form isn't filled out" do
    visit new_post_comment_path(post)
    click_on "Create Comment"
    expect(page).to have_content "errors"
  end

  it "creates a new comment on a post through AJAX", js: true do
    visit post_path(post)
    click_on "Add a comment"
    expect(page).to have_selector(:link_or_button, "Create Comment")
    fill_in "Text", :with => "Comment text."
    click_on "Create Comment"
    expect(page).not_to have_content "There are no comments yet!"
  end
end
