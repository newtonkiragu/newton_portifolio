Rails.application.routes.draw do
  resources :references
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'portifolio/index'
  root 'portifolio#index'
  resources :skills do
    resources :projects
  end
end
