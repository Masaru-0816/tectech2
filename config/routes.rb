Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root 'top#index'
  
  resources :users, only: [:new, :create, :edit, :update, :destroy]
  resources :kids, only: [:create, :index, :edit, :update] do
    resources :notices, only: [:index, :create]
  end
end
