Rails.application.routes.draw do
  root to: "tours#show"

  resources :tours, only: [:show] do
    resources :spots, only: [:index]
  end
end
