Rails.application.routes.draw do
  get '/health', to: 'checks#health'

  post '/departments', to: 'departments#create'
  get '/departments', to: 'departments#index'
  get '/departments/:id', to: 'departments#show'
  put '/departments/:id', to: 'departments#update'
  delete '/departments/:id', to: 'departments#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
