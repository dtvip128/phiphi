Rails.application.routes.draw do
  get 'imports/new'
  post 'imports/create'
  get 'homes/index'

  # Defines the root path route ("/")
  root 'homes#index'
end
