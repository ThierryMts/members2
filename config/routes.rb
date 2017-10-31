Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  
  get 'static_pages/home'

  get 'static_pages/pagesecrete'

root 'static_pages#home'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/users',  to: 'users#create'


resources :users

end
