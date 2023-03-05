Rails.application.routes.draw do

  root to: 'prototypes#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :prototypes do
    resources :comments, only: :create
  end

  resources :users, only: :show

end
