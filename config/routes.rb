Rails.application.routes.draw do
  get 'reviews/show'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'
  get 'wines/index'
  get 'wines/show'
  devise_for :users
  root to: 'pages#home'

  namespace :users do
    resources :answers, only: [:index]
    resources :reviews, only: [:index]
  end

  # wine related routes:
  # wine and reviews related routes:
  resources :wines, only: [:index, :show] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]

  # quizz realated routes:

  # user realated routes:
  resources :users, only: [:show, :index]
  get "/add/:user_id", to: "users#add", as: 'add_friend'
  get "/accept/:user_id", to: "users#accept", as: 'accept_friend'
  get "/reject/:user_id", to: "users#reject", as: 'reject_friend'
  get "/delete/:user_id", to: "users#delete", as: 'delete_friend'
  get "dashboard", to: "pages#dashboard", as: 'dashboard'
  #user related namespaced routes:

end
