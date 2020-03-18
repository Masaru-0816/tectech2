Rails.application.routes.draw do
  # ユーザー登録
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # 日本語/英語切り替えスコープ
  scope "(:locale)", locale: /ja|en/ do

    # トップ画面
    root 'top#index'

    resources :users, only: [:new, :create, :edit, :update, :destroy]
    
    resources :kids, only: [:index, :create] do
      resources :notices, only: [:index, :create]
      resources :diaries, only: [:index, :create]
      resources :messages, only: [:index, :create]
      resources :albums, only: [:index, :create]
      resources :pictures, only: [:index, :create, :show]
      resources :contacts, only: [:index, :create]
    end
    
    # 管理者ページ
    namespace :admin do
      resources :kids, only: [:index, :new, :create, :show, :edit, :destroy]
      resources :notices, only: [:index, :new, :create]
      resources :messages, only: [:index, :create]
      resources :albums, only: [:index, :new, :create]
    end
  end
end
