Rails.application.routes.draw do
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create destroy]
  end
  root 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
