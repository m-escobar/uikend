Rails.application.routes.draw do

  get 'dashboard', to: 'pages#dashboard', as: :dashboard


  get '/profiles', to: 'profiles#my_profile', as: :my_profile
  devise_for :users

  resources :profiles, only: [:show, :edit, :update]
  root to: 'trips#index'

  # resources :trips, except: :destroy

  # resources :bookings, only: [ :new, :create ]
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :trips do
    resources :bookings, only: [ :new, :create, :show ]
  end

end


