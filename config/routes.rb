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
  resources :itineraries do
    resources :itinerary_events, only: :destroy
  end
  resources :money_managements do
    resources :records, only: :destroy
  end
  resources :groups, only: [:index, :new, :create] do
    resources :users, only: [:index]
    post 'join', on: :collection
  end

  root 'top#index'  
end