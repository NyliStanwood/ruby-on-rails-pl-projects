Rails.application.routes.draw do
  get 'spotify/search'

  resources :tracks
  resources :playlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #sobreescribe la index default
  root to: 'tracks#index'
end
