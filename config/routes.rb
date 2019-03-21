Rails.application.routes.draw do
  resources :fights, only: [:index, :create]
  resources :opponents, only: [:index]
  resources :fish, only: [:index, :create, :show, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
