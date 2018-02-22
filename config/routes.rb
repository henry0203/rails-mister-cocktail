Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [ :new, :create,]
  end
#  namespace :admin do
#    resources :restaurants, only: [:update, :destroy]
#    resources :reviews, only: [:update, :destroy]
#  end
  resources :doses, only: [ :destroy]
  root to: 'cocktails#index'
end
