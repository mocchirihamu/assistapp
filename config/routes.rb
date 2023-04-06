Rails.application.routes.draw do
  devise_for :users
  root to: "projects#index"
  resources :users, only: :show
  resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
end
