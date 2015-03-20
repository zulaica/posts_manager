require "rails_helper"

describe "the delete post process" do
  it "deletes the post" do
    new_post = Post.create(:title => "Hello world!", :entry => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis eros nec velit condimentum condimentum.", :published => Time.now)
    visit post_path(new_post)
    click_on "Delete this post"
    expect(page).to have_content "deleted"
  end
end
