Rails.application.routes.draw do
  root 'pubs#index'
  resources :pubs, only: [:show] do
    resources :reviews, only: [:create]
  end
end
