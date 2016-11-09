Rails.application.routes.draw do
  resources :candidatos
  get 'users/new'

  root  :to => 'users#new'
  
resources :user_sessions
resources :users
get 'login' => 'user_sessions#new', :as => :login
post 'logout' => 'user_sessions#destroy', :as => :logout
end
