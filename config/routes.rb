Rails.application.routes.draw do
  devise_for :users
  root to: "bikkes#index"
  resources :bikkes, only: [:index]

  # ゲストログイン機能
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
end
