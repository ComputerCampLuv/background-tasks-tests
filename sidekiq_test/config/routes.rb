Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  root to: 'things#index'
  resources :things
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
