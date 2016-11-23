Rails.application.routes.draw do
  root 'pubs#index'
  resources :pubs, only: [:show]
end
