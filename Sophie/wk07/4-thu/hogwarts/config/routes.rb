Hogwarts::Application.routes.draw do
  root to: '/', to: 'houses#index'
  resources :students, only: [:index, :show, :new, :create]
  resources :houses, only: [:index, :show]

end
