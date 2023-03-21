Rails.application.routes.draw do
  resources :items, only: [:index, :show]
  resources :users, only: [:show] do
  end

  resources :items, only: [:show, :index, :create]
end
