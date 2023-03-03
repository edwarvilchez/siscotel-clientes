Rails.application.routes.draw do
  # rutas de la aplicacion

   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users 
  resources :clientes
  # get 'home/index'
  root 'home#index'
  get 'home/about'
 
end
