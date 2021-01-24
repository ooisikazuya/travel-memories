Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }
  
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  
  resources :users
  resources :itineraries
  resources :money_managements
  resources :groups, only: [:index, :new, :create] do
    post 'join', on: :collection
  end

  root 'top#index'  
end