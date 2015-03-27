require "rails_helper"

describe "the edit post process" do
  let (:user) { FactoryGirl.create(:user) }
  let (:post) { FactoryGirl.create(:post) }

  it "edits the post" do
    visit log_in_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Submit"
    visit post_path(post)
    click_on "Edit this post"
    click_on "Update Post"
    expect(page).to have_content "edited"
  end
end
