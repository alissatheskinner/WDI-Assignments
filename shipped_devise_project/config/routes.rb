Rails.application.routes.draw do
  get 'home/index'

  resources :boat_jobs
  resources :jobs
  resources :boats

  get 'users/index'

  get '/profile' => 'users#show', as: 'user'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords' 
  }
  root to: "home#index" #localhost:3000 
end
