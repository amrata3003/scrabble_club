Rails.application.routes.draw do
  resources :games
  resources :participations
  root 'leader_boards#index'
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
