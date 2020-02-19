Rails.application.routes.draw do
  resources :products
  root 'products#index'

  namespace :admin do
    root 'products#index' 
    resources :products
  end
end
