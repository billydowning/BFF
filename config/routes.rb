Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :fan_groups, only: [:show, :index] do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:destroy]

  resources :users, only: [:show] do
    resources :bookings, only: [:index, :show, :edit, :update]
  end
end
