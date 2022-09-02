# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:create, :destroy]
  end
  end

  get 'users/:user_id/posts/:post_id/comments_list', to: 'api#list_comments', as: :list_comments
  get 'users/:user_id/posts_list', to: 'api#list_posts', as: :list_posts
  post 'users/:user_id/posts/:post_id/comment_create', to: 'api#create_comment', as: :create_comment

end
