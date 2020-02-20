Rails.application.routes.draw do
  devise_for :users
  
  resources :products
  root 'products#index'

  namespace :admin do
    root 'products#index' 
    resources :products do
      delete '/images/:image_id' => 'products#destroy_image', as: :destroy_image, on: :member
    end
  end
end
