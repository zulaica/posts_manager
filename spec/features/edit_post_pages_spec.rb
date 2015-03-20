require "rails_helper"

describe "the edit post process" do
  it "edits the post" do
    new_post = Post.create(:title => "Hello world!", :entry => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis eros nec velit condimentum condimentum.", :published => Time.now)
    visit post_path(new_post)
    click_on "Edit this post"
    click_on "Update Post"
    expect(page).to have_content "edited"
  end
end
