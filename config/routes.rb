Rails.application.routes.draw do
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
