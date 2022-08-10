Rails.application.routes.draw do
  devise_for :users
  resources :customers do
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  root 'customers#index'
  resources :comments, only: [:create, :destroy]
  resources :documents do
    collection { post :import }
    collection do
    delete 'destroy_all'
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end