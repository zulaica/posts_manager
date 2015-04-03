require "rails_helper"

describe "the edit post process" do
  let (:user) { FactoryGirl.create(:user) }
  let (:post) { FactoryGirl.create(:post, user: user) }

  before do
    login(user)
  end

  it "edits the post" do
    visit post_path(post)
    click_on "Edit this post"
    click_on "Update Post"
    expect(page).to have_content "edited"
  end
end
