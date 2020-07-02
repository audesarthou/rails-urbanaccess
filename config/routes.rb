Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#splash'
  get 'home', to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :establishments, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reviews, only: [:new, :create]
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:index]

  resources :travel_tips, only: [:index]

  resources :reports, only: [:create, :index]
end
