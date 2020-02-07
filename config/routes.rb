Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  scope "(:locale)", locale: /ja|en/ do

    root 'top#index'  

    
    resources :users, only: [:new, :create, :edit, :update, :destroy]
    
    resources :kids, only: [:index] do
      resources :notices, only: [:index, :create]
      resources :diaries, only: [:index, :create]
      resources :messages, only: [:index, :create]
      resources :albums, only: [:index, :create, :show]
      resources :pictures, only: [:index, :create, :show]
      resources :contacts, only: [:index, :create]
    end
  end

  namespace :admin do
    resources :kids, only: [:index, :new, :create, :show, :edit, :destroy]
  end
end
