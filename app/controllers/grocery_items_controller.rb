class GroceryItemsController < ApplicationController
  def destroy
    @grocery_item = GroceryItem.find(params[:id])
    grocery_list = @grocery_item.grocery_list
    @grocery_item.destroy
    redirect_to grocery_list_path(grocery_list.id)
  end
end
