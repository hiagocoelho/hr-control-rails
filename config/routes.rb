Rails.application.routes.draw do
  get '/health', to: 'checks#health'

  post '/departments', to: 'departments#create'
  get '/departments', to: 'departments#index'
  get '/departments/:id', to: 'departments#show'
  put '/departments/:id', to: 'departments#update'
  delete '/departments/:id', to: 'departments#destroy'

  post '/roles', to: 'roles#create'
  get '/roles', to: 'roles#index'
  get '/roles/:id', to: 'roles#show'
  put '/roles/:id', to: 'roles#update'
  delete '/roles/:id', to: 'roles#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
