Rails.application.routes.draw do
  resources :user_shoes
  resources :shoes
  resources :users
  post 'login', to: 'authentication#login'
end
