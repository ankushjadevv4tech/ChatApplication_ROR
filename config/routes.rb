Rails.application.routes.draw do
  resources :users
  post 'auth/google', to: 'sessions#google'
  mount ActionCable.server => '/cable'
  resources :messages, only: [:index]
end
