Rails.application.routes.draw do
  root 'users#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  #resources :users

  resources :users, only: [:show] do
    resources :appointments
  end

  resources :users, only: [:show] do
    resources :reviews#, only: [:index, :show, :new, :create]
  end

  #resources :appointments
  resources :reviews

  resources :hair_stylists
  resources :hairstyles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
