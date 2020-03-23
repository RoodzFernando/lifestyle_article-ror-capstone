Rails.application.routes.draw do
  resources :articles
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'homepage#index'
  resources :users
  get    '/vote',   to: 'votes#create'
end
