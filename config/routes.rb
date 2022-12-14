Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[create new]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookmarks, only: :destroy
end
