Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :users do
    resources :answers, only: [:index]
    resources :reviews, only: [:index]
    resources :connections, only: [:index]
  end

  # wine related routes:
  # wine and reviews related routes:
  resources :wines, only: [:index, :show] do
    resources :reviews, only: [:new, :index, :create, :edit, :update]
  end
  resources :reviews, only: [:show, :destroy]

  # quizz realated routes:

  # user realated routes:
  resources :users, only: [:show, :index] do
    resources :user_connections, only: [:create]
  end
  resources :connections, only: [:index, :create, :update, :destroy]
  get "dashboard", to: "pages#dashboard", as: 'dashboard'
  #user related namespaced routes:

end
