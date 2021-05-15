Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "reviews#index"
  # カテゴリー検索ルート
  get '/reviews/displacement/:id', to: "reviews#displacement"
  get '/reviews/maker/:id', to: "reviews#maker"
  get '/reviews/type/:id', to: "reviews#type"
  # いいね機能ルート
  post   '/like/:review_id' => 'likes#like',   as: 'like'
  delete '/like/:review_id' => 'likes#unlike', as: 'unlike'
  resources :reviews do
    collection do
      get 'search'
    end
    resources :comments, only: :create
  end
  resources :users, only: :show

  # ゲストログイン機能
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
end