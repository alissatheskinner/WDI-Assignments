Rails.application.routes.draw do
#Sessions routes 
  get 'sessions/new'
  post 'sessions/create'
  delete 'sessions/destroy'
#Friendships routes
  post 'friendships/create'
  delete 'friendships/destroy'
#Users, posts, comments routes 
  resources :users  
  resources :posts
  resources :comments
  
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
