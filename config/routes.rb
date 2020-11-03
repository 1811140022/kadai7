Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#main'
  get 'top/main'
  resources :products
  resources :cart_items, only: [:create, :destroy]
  resources :carts, only: [:index]
end
