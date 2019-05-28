Rails.application.routes.draw do

  devise_for :users
  root to: 'trips#index'

  # resources :trips, except: :destroy

  # resources :bookings, only: [ :new, :create ]
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :trips, except: :destroy do
    resources :bookings, only: [ :new, :create ]
  end

end


