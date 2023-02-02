Rails.application.routes.draw do
  resources :movies
  namespace :admin do
    resources :movies
  end
  get "search" => "movies#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end