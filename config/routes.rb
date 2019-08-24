Rails.application.routes.draw do
  root 'users#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users

  resources :users, only: [:show] do
    resources :appointments
  end

  resources :users, only: [:show] do
    resources :reviews
  end

  #resources :appointments
  resources :reviews
get '/hair_stylists/most', to: 'hair_stylists#most_appointments'
  resources :hair_stylists #, only: [:show] do
    #resources :appointments
  #end

  resources :hairstyles

  resources :count_appointments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
