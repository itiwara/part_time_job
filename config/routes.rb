Rails.application.routes.draw do
  root to: 'homes#index'
  resources :items
  resources :employees, only: [:index, :new, :create]
end

