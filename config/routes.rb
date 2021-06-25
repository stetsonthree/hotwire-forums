Rails.application.routes.draw do
  devise_for :users
  resources :discussions, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :posts, only: [:create], module: :discussions
  end
  root to: "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
