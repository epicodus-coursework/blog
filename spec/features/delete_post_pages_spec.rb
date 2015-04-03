require 'rails_helper'

describe "the delete post process" do
  it "deletes a post" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.build(:post)
    log_in(user)
    add_post(post)
    click_on 'Delete post'
    expect(page).to have_content 'successfully'
  end
end
