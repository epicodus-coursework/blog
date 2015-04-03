require 'rails_helper'

describe "the create new post process" do
  it "creates a new post" do
    user = FactoryGirl.create(:user)
    log_in(user)
    click_on 'Create a new post'
    fill_in 'Title', :with => 'Test post'
    fill_in 'Body', :with => 'Test body'
    click_on "Create Post"
    expect(page).to have_content 'Post'
  end

  it "gives an error when no title is entered" do
    visit new_post_path
    click_on 'Create Post'
    expect(page). to have_content 'errors'
  end
end
