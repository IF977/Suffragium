Rails.application.routes.draw do
  resources :candidatos
  root  :to => 'users#index'
  
resources :user_sessions
resources :users
#get 'login' => 'user_sessions#new', :as => :login
#post 'logout' => 'user_sessions#destroy', :as => :logout
devise_for :users, skip: [:sessions]
as :user do
  get 'signin', to: 'devise/sessions#new', as: :new_user_session
  post 'signin', to: 'devise/sessions#create', as: :user_session
  match 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
end
end
