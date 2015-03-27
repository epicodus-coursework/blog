require 'rails_helper'

describe "the delete post process" do
  it "deletes a post" do
    post = Post.create(:title => 'Test post', :body => 'Test body')
    visit post_path(post)
    click_on 'Delete'
    expect(page).to have_content 'successfully'
  end
end
