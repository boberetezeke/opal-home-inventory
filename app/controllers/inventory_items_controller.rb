class InventoryItemsController < ApplicationController
  def destroy
    @inventory_item = InventoryItem.find(params[:id])
    @inventory_item.destroy
    redirect_to inventory_path(current_user.inventory)
  end
end
