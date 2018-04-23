Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '(*any)', to: redirect(subdomain: ''), via: :all, constraints: {subdomain: 'www'}
  root 'static_pages#index'
  resources :boxes, only: [:index, :show]
  resources :cities, only: [:index, :show]
  get 'standards', to: 'static_pages#standards'
  get 'crossfit-glossary', to: 'static_pages#glossary'
end
