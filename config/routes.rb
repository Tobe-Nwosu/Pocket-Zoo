Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/match', to: 'animals#match', as: 'match'
  resources :users
  resources :animals, only: %i[index match show] do
    resources :findings, only: %i[new create]
  end
  resources :findings, only: %i[index show edit update destroy]
end
