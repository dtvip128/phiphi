Rails.application.routes.draw do
  get 'imports/new'
  post 'imports/create'
  get 'homes/index'
  get 'homes/report'

  # Defines the root path route ("/")
  root 'imports#new'
end
