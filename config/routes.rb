Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  root 'store#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
