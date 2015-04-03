require "rails_helper"

describe "the delete post process" do
  let (:user) { FactoryGirl.create(:user) }
  let (:post) { FactoryGirl.create(:post, user: user) }

  it "deletes the post" do
    visit post_path(post)
    click_on "Delete this post"
    expect(page).to have_content "deleted"
  end
end
