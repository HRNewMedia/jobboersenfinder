Jbb::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  root to: 'home#index'

  resources :platforms, only: [ :index, :show ]

  match 'imprint', to: 'home#imprint'

  namespace :backend do
    root to: 'platforms#index'

    resources :platforms, :fields, :kinds, :employement_types, :features
  end
end
