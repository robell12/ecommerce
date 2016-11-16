Rails.application.routes.draw do

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks"}
  root 'shared#home'

  get '/about', to: 'shared#about', as: 'about'


  get '/electronics', to: 'categories#electronics', as: 'electronics'
  get '/furniture', to: 'categories#furniture', as: 'furniture'
  get '/garden', to: 'categories#garden', as: 'garden'
  get '/outdoor', to: 'categories#outdoors', as: 'outdoor'

  resources :products
end
