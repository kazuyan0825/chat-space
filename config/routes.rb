Rails.application.routes.draw do
  devise_for :users
  # root = localhost:3000 page
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update]
end
