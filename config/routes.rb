Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :categories
    resources :posts
    resources :topics

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: "registrations" }
  resources :categories
  resources :topics do
    resources :posts
  end
  root to: "categories#index"
end
