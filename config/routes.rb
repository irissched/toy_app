Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'
  get 'users/new'
  get 'home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get  '/about' => 'static_pages#about'
  get  '/contact' => 'static_pages#contact'
  get  '/signup' => 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end

  root 'static_pages#home'

  resources :microposts
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]

end


