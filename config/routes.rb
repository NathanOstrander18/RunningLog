Rails.application.routes.draw do
  resources :places
  devise_for :users
  resources :runs
  resources :users
  root "pages#show", page: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
