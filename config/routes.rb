Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  devise_for :users
  root 'pages#home'
  get 'pages/home'
  get 'user/:id', to: 'users#show', as: 'user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
