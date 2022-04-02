Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get '/admin', to: 'admin#admin'
  root to: 'trends#index'

  resources :trends
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
