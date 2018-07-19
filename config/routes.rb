Rails.application.routes.draw do

  root 'static_pages#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :gifs, only: [:index, :update]
  resources :users, only: [:new, :create, :show]
  resources :categories, only: [:show, :destory]

  namespace :admin do
    resources :gifs, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
