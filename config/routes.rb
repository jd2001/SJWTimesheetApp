Rails.application.routes.draw do
  devise_for :users
  root "summary#summary"
  get 'home', to: 'settings#home'

  resources :transactions
  resources :clients
  resources :billing_types
  resources :client_billing_types
end
