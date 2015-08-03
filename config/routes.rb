Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :keywords
    end
  end
  get 'log_in' => 'sessions#new', :as => 'log_in'
  get 'log_out' => 'sessions#destroy', :as => 'log_out'
  get 'sign_up' => 'users#new', :as => 'sign_up'

  resources :sessions
  resources :users
  resources :keywords do
    collection { post :import }
  end
  root 'keywords#index'
end
