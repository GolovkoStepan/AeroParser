Rails.application.routes.draw do
  resources :companies, only: %i[index show]
  resources :aircrafts, only: %i[index show]
  resources :cities, only: %i[index show]

  root 'companies#index'
end
