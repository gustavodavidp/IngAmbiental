Rails.application.routes.draw do
  resources :contaminantes
  get 'welcome/index'

  root 'welcome#index'
  resources :lugares
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
