Rails.application.routes.draw do
  get '/', to: 'pokemons#index'

  resources :pokemons
end
