Rails.application.routes.draw do
  root 'users#show'
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users

  resources :users, only: [:show] do
    resources :appointments
  end

  resources :appointments

  resources :hair_stylists
  resources :hairstyles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
