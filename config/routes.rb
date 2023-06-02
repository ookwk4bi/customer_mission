Rails.application.routes.draw do
  devise_for :users
  resources :customers do
    resources :comments, only: [:create, :destroy,:show]
    collection do
      get 'search'
    end
    collection do
      get 'csv_export'
    end
  end
  root 'customers#index'
  post '/customers/csv_export', to: 'customers#csv_export'
  resources :comments, only: [:create, :destroy, :show]
  resources :documents do
    collection { post :import }
    collection do
      delete 'destroy_all'
    end
    collection do
      get 'copy'
    end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end