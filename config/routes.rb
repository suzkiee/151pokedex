Rails.application.routes.draw do
  get 'pokedex', to: 'pokemon#index'
end
