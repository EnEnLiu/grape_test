Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  mount BookStore::Base => '/'

  root to: "home#index"
end
