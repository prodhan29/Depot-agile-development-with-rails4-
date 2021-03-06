Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/create'

  get 'sessions/destroy'

  resources :dusers
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  root 'store#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
