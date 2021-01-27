Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }
  
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  
  resource :user, only: [:show, :edit, :update]
  resources :itineraries
  resources :money_managements
  resources :groups, only: [:index, :new, :create] do
    resources :users, only: [:index]
    post 'join', on: :collection
  end

  root 'top#index'  
end