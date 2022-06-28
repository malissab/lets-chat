Rails.application.routes.draw do
  resources :messages
  resources :chatrooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'chatrooms#index'
end
