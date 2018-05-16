Rails.application.routes.draw do
  namespace :api do
    resources :clients, only: [:index, :create]
  end
end
