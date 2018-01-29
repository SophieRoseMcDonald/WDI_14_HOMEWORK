Rails.application.routes.draw do
  resources :likes
  resources :comments
  # resources :projects

  root to: '/', to: 'pages#home'

  #get '/signup', to: 'users#new'
  # post '/users', to: 'users#create'
  get '/login', to: 'session#new'
  post '/session', to: 'session#create'

  resources :users
  resources :projects, only: [:new, :create, :show]
end
