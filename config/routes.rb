RailStrap::Application.routes.draw do

  devise_for :users, :admins

  get '/token' => 'home#token', as: :token

  get '/admins/manage' => 'admins#manage', as: :manage

  resources :home, only: :index
  resources :admins

  root 'home#index'

end
