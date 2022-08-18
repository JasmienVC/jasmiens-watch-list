Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  resources :lists, except: %i[edit update destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
