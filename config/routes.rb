Rails.application.routes.draw do
  root "description#index"

  get "/description", to: "description#index"
end
