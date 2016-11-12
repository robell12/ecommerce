Rails.application.routes.draw do
  root 'shared#home'

  get '/about', to: 'shared#about', as: 'about'

  get '/electronics', to: 'categories#electronics', as: 'electronics'
  get '/furniture', to: 'categories#furniture', as: 'furniture'
  get '/garden', to: 'categories#garden', as: 'garden'
  get '/outdoor', to: 'categories#outdoors', as: 'outdoor'

  resources :categories do
  	resources :products
  end
end
