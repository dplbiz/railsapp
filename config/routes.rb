Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/admin' do
    resources :users, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :products, :sessions
    get 'login', to: 'sessions#login', as: 'login'
    post 'authenticate', to: 'sessions#authenticate', as: 'authenticate'
    get 'logout', to: 'sessions#logout', as: 'logout'
  end
  
  scope '/' do
      resources :home
      resources :users, only: [:signup, :create]
      get 'signup', to: 'users#signup', as: 'signup'
  end
  
end
