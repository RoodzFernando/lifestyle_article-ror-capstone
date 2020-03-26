Rails.application.routes.draw do
  get 'categories/index'
  resources :articles
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/logout',  to: 'sessions#destroy'
  root 'homepage#index'
  resources :users
  resources :votes, only: [:show]
  resources :categories, only: [:show]
end
