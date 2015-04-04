require "rails_helper"

describe "the edit existing user process" do
  let (:user) { FactoryGirl.create(:user) }

  before do
    login(user)
  end

  it "edits an existing user" do
    visit user_path(user)
    click_on "Edit your account"
    click_on "Submit"
    expect(page).to have_content "updated"
  end
end
