Rails.application.routes.draw do
  resources :exchange_symbols,  path: 'symbols'
  resources :icos
  resources :ico_members
  resources :exchanges
  resources :exchange_rates
  resources :coins
  resources :assets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
