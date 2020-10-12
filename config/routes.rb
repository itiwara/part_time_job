Rails.application.routes.draw do
  get 'login' => 'sessions#new'
  post 'login' =>'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'signup' => 'employees#new'
  root to: 'homes#index'
  resources :items do
    collection do
          get 'order'
    end
  end
  resources :employees, only: [:index, :new, :create]
  resources :carts, only: [:show]

  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'
end

