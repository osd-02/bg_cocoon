Rails.application.routes.draw do
  root "description#index"

  get "/description", to: "description#index"
  resources :recommend_board_games
end
