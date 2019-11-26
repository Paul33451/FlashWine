Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # wine and reviews related routes:
  resources :wines, only: [:index, :show] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]

  # quizz realated routes:

  # user realated routes:
  resources :users, only: [:show, :index] do
    resources :user_connections, only: [:create]
  end
  resources :connections, only: [:index, :create, :update, :destroy]
  get "dashboard", to: "pages#dashboard", as: 'dashboard'
  #user related namespaced routes:
  namespace :user do
    resources :answers, only: [:index]
    resources :reviews, only: [:index]
    resources :connections, only: [:index]
  end
end
