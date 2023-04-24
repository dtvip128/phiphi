Rails.application.routes.draw do
  devise_for :users
  get 'imports/new'
  post 'imports/create'
  get 'homes/index'
  get 'homes/report'

  # Defines the root path route ("/")
  root 'imports#new'

  namespace :admin do
    resources :dashboard, only: :index
  end
end
