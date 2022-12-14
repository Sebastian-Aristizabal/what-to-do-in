Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :plans, shallow: true do
    resources :reviews, only: [:create, :new]
    resources :selected_plans, only: [:create]
  end
  resources :selected_plans, only: [:index, :update, :destroy]
  resources :reviews, only: [:edit, :update, :destroy]
end
