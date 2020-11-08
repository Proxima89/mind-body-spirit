Rails.application.routes.draw do
  resources :categories
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Devise.mappings.keys
  
  devise_for :users 
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users, only: [:index, :show, :edit, :update, :destroy]

  root to: "pages#index"
  
  get 'index' => 'affiliates#index'
  get 'body', to: 'pages#body'
  get 'mind', to: 'pages#mind'
  get 'spirit', to: 'pages#spirit'
  
  resources :affiliates do
    resources :comments
      # resources :users
  end
end
