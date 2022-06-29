Rails.application.routes.draw do
  resources :messages
  resources :chatrooms

  root 'chatrooms#index'

end
