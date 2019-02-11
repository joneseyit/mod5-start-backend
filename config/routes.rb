Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :photos
      resources :photo_tags, only: [:create]
      post '/login', to: 'auth#create'
      post '/search', to: 'photos#search'
      # get 'profile', to: 'users#profile'
    end
  end
end
