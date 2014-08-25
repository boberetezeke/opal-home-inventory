Rails.application.routes.draw do
  devise_for :users

  resources :users do
    collection do
      get :home
    end
  end

  resources :grocery_lists, only: :show do
    member do
      get  :shop
      post :add_item
      post :add_to_inventory
    end
  end

  resources :inventories, only: :show
  resources :items
  resources :grocery_items, only: :destroy
  resources :inventory_items, only: :destroy

  root to: "users#home"
end
