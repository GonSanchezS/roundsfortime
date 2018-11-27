Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '(*any)', to: redirect(subdomain: ''), via: :all, constraints: {subdomain: 'www'}
  root 'static_pages#index'
  resources :boxes, only: [:index, :show]
  resources :cities, only: [:index, :show, :glossary]
  get 'standards', to: 'static_pages#standards'
  get 'crossfit-glossary', to: 'static_pages#glossary'
  get "/crossfit-prices" => redirect("https://docs.google.com/spreadsheets/d/112UFCh-atAR3rwzGCJitI6RzZ9i0LSP4iH5_sNqSmzE/edit?usp=sharing")
  get "/submit" => redirect("https://docs.google.com/forms/d/e/1FAIpQLSc9UjVBtOlOxNLHGTGJqLhcxaVF-LBWu2kVxq1dGJrtd7H2-A/viewform?usp=sf_link")
  get 'sitemap', to: 'static_pages#sitemap'
end
