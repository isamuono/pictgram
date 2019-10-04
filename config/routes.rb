Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  
  get 'users/new', to: 'users#new'
  
  root 'pages#index'
  get 'pages/help', to: 'pages#help'
  
  resources :users
  
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  resources :favorites, only: [:create, :destroy]
  
  get 'comments/index'
  get 'comments/new', to: 'comments#new'
  post '/comments',   to: 'comments#create'
end