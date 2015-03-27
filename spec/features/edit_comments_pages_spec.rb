require 'rails_helper'

describe "the edit comment process" do
  it "edits a comment" do
    post = Post.create(:title => 'Test post', :body => 'Test body')
    visit posts_path
    click_on 'Test post'
    click_on 'Add a comment'
    fill_in 'Body', :with => 'Test body'
    click_on 'Create Comment'
    click_on 'Edit comment'
    fill_in 'Body', :with => 'New comment'
    click_on "Update Comment"
    expect(page).to have_content 'successfully'
  end

  it "gives an error when no title is entered" do
    post = Post.create(:title => 'Test post', :body => 'Test body')
    visit posts_path
    click_on 'Test post'
    click_on 'Add a comment'
    fill_in 'Body', :with => 'Test body'
    click_on 'Create Comment'
    click_on 'Edit comment'
    fill_in 'Body', :with => ''
    click_on "Update Comment"
    expect(page). to have_content 'errors'
  end
end
