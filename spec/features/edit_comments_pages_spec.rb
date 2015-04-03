require 'rails_helper'

describe "the edit comment process" do
  it "edits a comment" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    log_in(user)
    add_post(post)
    add_comment(comment)
    click_on 'Edit comment'
    fill_in 'Body', :with => 'New comment'
    click_on "Update Comment"
    expect(page).to have_content 'successfully'
  end

  it "gives an error when no body is entered" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    log_in(user)
    add_post(post)
    add_comment(comment)
    click_on 'Edit comment'
    fill_in 'Body', :with => ''
    click_on "Update Comment"
    expect(page). to have_content 'errors'
  end
end
