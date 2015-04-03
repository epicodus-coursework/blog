FactoryGirl.define do
  factory(:user) do
    email('test@test.com')
    password('12345678')
    password_confirmation('12345678')
  end

  factory (:post) do
    title('Post title')
    body('Post body')
    user_id(1)
  end

  factory (:comment) do
    body('Comment body')
    user_id(1)
    post_id(1)
  end
end
