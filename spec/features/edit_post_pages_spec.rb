require 'rails_helper'

describe "the edit post process" do
  it "edits a post" do
    post = Post.create(:title => 'Test post', :body => 'Test body')
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Title', :with => 'New title'
    fill_in 'Body', :with => 'New body'
    click_on "Update Post"
    expect(page).to have_content 'successfully'
  end

  it "gives an error when no title is entered" do
    post = Post.create(:title => 'Test post', :body => 'Test body')
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Title', :with => ''
    click_on 'Update Post'
    expect(page). to have_content 'errors'
  end
end
