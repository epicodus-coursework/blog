Rails.application.routes.draw do
  root :to => 'posts#index'

  resources :users
  resources :posts do
    resources :comments, :except => [:show, :index]
  end

  resources :sessions, :only => [:new, :create, :destroy]

end
