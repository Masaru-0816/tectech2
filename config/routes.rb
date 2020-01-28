Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  
  resources :users, only: [:edit, :update]
  resources :kids, only: [:create, :index, :edit, :update]

end
