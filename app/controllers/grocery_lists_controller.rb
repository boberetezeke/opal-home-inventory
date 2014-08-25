class GroceryListsController < ApplicationController
  def show
    @grocery_list = GroceryList.find(params[:id])
    @new_item = Item.new
  end
end
