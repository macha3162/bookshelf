Rails.application.routes.draw do

  resources :users
  root 'books#index'

  resources :books do
    resources :loans
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
