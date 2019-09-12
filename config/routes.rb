Rails.application.routes.draw do
  get 'users/new', to: 'users#new'
  
  root 'pages#index'
  get 'pages/help', to: 'pages#help'
  
  resources :users
end
