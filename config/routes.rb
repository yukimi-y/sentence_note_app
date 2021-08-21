Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  get '/users/:id', to: 'users#show', as: 'user'
end
