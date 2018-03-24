Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  resources :boxes, only: [:index, :show]
  resources :cities, only: [:index, :show]
  get 'crossfit-gyms-dublin', to: 'static_pages#dublin'
  get 'standards', to: 'static_pages#standards'
  get 'test', to: 'static_pages#test'
  get 'crossfit-glossary', to: 'static_pages#glossary'
end
