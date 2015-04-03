require 'rails_helper'

describe "add comment process" do
  it "adds a comment" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    log_in(user)
    add_post(post)
    click_on 'Add a comment'
    fill_in 'Body', :with => 'Test comment'
    click_on "Create Comment"
    expect(page).to have_content 'successfully'
  end

  it "gives an error when no body is entered" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    log_in(user)
    add_post(post)
    click_on 'Add a comment'
    fill_in 'Body', :with => ''
    click_on 'Create Comment'
    expect(page). to have_content 'problem'
  end
end
