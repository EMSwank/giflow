Rails.application.routes.draw do

  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :gifs, only: [:new, :index, :create, :destroy]
  resources :users, only: [:new, :index, :create, :show]

  namespace :admin do
    resources :dashboards, only: [:index]
    resources :categories, only: [:new, :create, :index, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
