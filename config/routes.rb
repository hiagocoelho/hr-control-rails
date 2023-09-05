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

  post '/seniorities', to: 'seniorities#create'
  get '/seniorities', to: 'seniorities#index'
  get '/seniorities/:id', to: 'seniorities#show'
  put '/seniorities/:id', to: 'seniorities#update'
  delete '/seniorities/:id', to: 'seniorities#destroy'

  post '/employees', to: 'employees#create'
  get '/employees', to: 'employees#index'
  get '/employees/:id', to: 'employees#show'
  put '/employees/:id', to: 'employees#update'
  delete '/employees/:id', to: 'employees#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
