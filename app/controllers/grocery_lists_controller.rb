class GroceryListsController < ApplicationController
  def show
    @grocery_list = GroceryList.find(params[:id])
  end

  def shop
    @grocery_list = GroceryList.find(params[:id])
    @new_item = Item.new
  end

  def add_item
    grocery_list = GroceryList.find(params[:id])
    item = Item.find(params[:item])

    GroceryItem.create(grocery_list: grocery_list, item: item)
    redirect_to shop_grocery_list_path(grocery_list.id)
  end

  def add_to_inventory
    grocery_list = GroceryList.find(params[:id])
    grocery_list.grocery_items.each do |grocery_item|
      if params["grocery_item_#{grocery_item.id}"]
        InventoryItem.create(user: current_user, item: grocery_item.item, inventory: current_user.inventory)
      else
        grocery_item.destroy
      end
    end

    # create new blank grocery list
    GroceryList.create(user: current_user)
    redirect_to root_path
  end
end
