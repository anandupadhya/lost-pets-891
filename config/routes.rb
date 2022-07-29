Rails.application.routes.draw do
  root to: 'pets#index'
  resources :pets do
    resources :comments, only: [:create]
  end

  resources :comments, only: [:destroy]
end
