Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles do
    resources :reviews, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show]
end
