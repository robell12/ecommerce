Rails.application.routes.draw do
  root 'home#index'

  get '/signup', to: 'signup#index', as: 'signup'

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks"}
  resources :newsletter, only: [:create]

  get '/about', to: 'shared#about', as: 'about'
  post '/contact', to: 'shared#contact_us', as: 'contact'

  get '/electronics', to: 'categories#electronics', as: 'electronics'
  get '/furniture', to: 'categories#furniture', as: 'furniture'
  get '/garden', to: 'categories#garden', as: 'garden'
  get '/outdoor', to: 'categories#outdoors', as: 'outdoor'

  resources :products
end
