Rails.application.routes.draw do
  resources :folders
  resources :icons
  resources :base_gadgets
  resources :journals
  resources :gadgets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
