def log_in(user)
  visit '/'
  click_on 'Log in'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end

def add_post(post)
  click_on 'Create a new post'
  fill_in 'Title', with: post.title
  fill_in 'Body', with: post.body
  click_button 'Create Post'
end

def add_comment(comment)
  click_on 'Add a comment'
  fill_in 'Body', with: 'Comment body'
  click_on 'Create Comment'
end
