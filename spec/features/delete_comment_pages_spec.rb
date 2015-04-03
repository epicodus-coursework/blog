require 'rails_helper'

describe "the delete comment process" do
  it "deletes a comment" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.build(:post)
    comment = FactoryGirl.build(:comment)
    log_in(user)
    add_post(post)
    add_comment(comment)
    click_on 'Delete comment'
    expect(page).to have_content 'successfully'
  end
end
