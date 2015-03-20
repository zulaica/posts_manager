require "rails_helper"

describe "the create new comment process" do
  it "creates a new comment on a post" do
    new_post = Post.create(:title => "Hello world!", :entry => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis eros nec velit condimentum condimentum.", :published => Time.now)
    visit post_path(new_post)
    click_on "Add a comment"
    fill_in "Author", :with => "Person's Name"
    fill_in "Text", :with => "Comment text."
    click_on "Create Comment"
    expect(page).to have_content "added"
  end

  it "throws an error when the form isn't filled out" do
    new_post = Post.create(:title => "Hello world!", :entry => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis eros nec velit condimentum condimentum.", :published => Time.now)
    visit new_post_comment_path(new_post)
    click_on "Create Comment"
    expect(page).to have_content "errors"
  end
end
