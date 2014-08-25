Rails.application.routes.draw do
  devise_for :users

  resources :users do
    collection do
      get :home
    end
  end
  resources :grocery_lists, only: :show
  resources :inventories, only: :show
  resources :items
end
