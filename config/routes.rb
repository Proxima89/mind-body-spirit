Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#index"

  get 'index' => 'affiliates#index'
  get 'body', to: 'pages#body'
  get 'mind', to: 'pages#mind'
  get 'spirit', to: 'pages#spirit'
  
  resources :affiliates do
    resources :comments
  end
end
