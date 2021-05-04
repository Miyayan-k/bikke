Rails.application.routes.draw do
  devise_for :users
  root to: "reviews#index"
  get '/reviews/displacement/:id', to: "reviews#displacement"
  resources :reviews do
    collection do
      get 'search'
    end
  end

  # ゲストログイン機能
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
end