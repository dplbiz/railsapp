Rails.application.routes.draw do
  resources :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home#index
  resources :security#login
end