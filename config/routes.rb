Rails.application.routes.draw do
  get 'static_pages/home' => 'static_pages#home'
  get 'static_pages/help' => 'static_pages#help'
  get  'static_pages/about' => 'static_pages#about'
  get  'static_pages/contact' => 'static_pages#contact'

  root 'static_pages#home'

  resources :microposts
  resources :users
end


