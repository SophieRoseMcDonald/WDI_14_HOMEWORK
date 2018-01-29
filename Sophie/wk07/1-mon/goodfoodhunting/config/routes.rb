Rails.application.routes.draw do
  resources :dishes
  # controller #file&method
  get '/', to: 'pages#home'
  # home is the method
  get '/about', to: 'pages#about'

  resources :dishes # generates all the routes (new,create, delete, edit,show)
end
