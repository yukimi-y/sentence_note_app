Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get '/users/:id', to: 'users#show', as: 'user'
end
