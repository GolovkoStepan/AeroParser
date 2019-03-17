Rails.application.routes.draw do
  get 'cities/index' => 'cities#index', as: 'cities'
  get 'cities/:id' => "cities#show", as: 'city'

  get 'aircrafts/index' => 'aircrafts#index', as: 'aircrafts'
  get 'aircrafts/:id' => "aircrafts#show", as: 'aircraft'

  get 'companies/index' => 'companies#index', as: 'companies'
  get 'companies/:id' => 'companies#show', as: 'company'

  root 'companies#index'
end
