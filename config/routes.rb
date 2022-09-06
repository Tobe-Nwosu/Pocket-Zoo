Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/animals/match', to: 'animals#match', as: 'match'
  resources :users
  resources :animals, only: [:index, :match, :show] do
    resources :findings, only: [:new, :create]
  end
  resources :findings, only: [:index, :edit, :update, :destroy]
end
