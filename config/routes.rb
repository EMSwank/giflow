Rails.application.routes.draw do
  get 'gif/new'

  get 'gif/index'

  get 'gif/create'

  get 'gif/destroy'

  get 'static_pages/home'

  get 'static_pages/help'

  resources :gifs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
