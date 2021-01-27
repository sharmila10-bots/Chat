Rails.application.routes.draw do
  resources :users
  resources :chatroom
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#home'

  get 'signup', to: "users#new"

  post 'signup', to: "users#create"

  get 'login', to: "sessions#new"

  post 'login', to: "sessions#create"

  delete 'logout', to: "sessions#destroy"

  post 'message', to: "messages#create"

  mount ActionCable.server, at: '/cable'
end
