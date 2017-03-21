Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/show'

  root 'home#show'

  resources :pages, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
