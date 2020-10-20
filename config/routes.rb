Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets, only: :index
  post 'posts', to: 'posts#create'
  get 'posts/:id', to: 'posts#checked'
  root to: 'posts#index'
 end