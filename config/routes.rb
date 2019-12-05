Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'

  get 'home/about'
  get 'home/services'
  get 'home/contact'
end
