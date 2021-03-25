Rails.application.routes.draw do
  devise_for :users
  root to: "bikkes#index"
  resources :bikkes, only: [:index]
end
