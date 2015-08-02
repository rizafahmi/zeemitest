Rails.application.routes.draw do
  get 'sign_up' => 'users#new', :as => 'sign_up'
  resources :users

  resources :keywords do
    collection { post :import }
  end
  root 'keywords#index'
end
