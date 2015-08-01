Rails.application.routes.draw do
  resources :keywords do
    collection { post :import }
  end
  root 'keywords#index'
end
