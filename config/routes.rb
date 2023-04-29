Rails.application.routes.draw do
  resources :posts
  resources :users
   get 'login', to: 'login#new'
  post 'login', to: 'login#create'
  get 'logout', to: 'login#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
