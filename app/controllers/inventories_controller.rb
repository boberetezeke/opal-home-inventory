class InventoriesController < ApplicationController
  before_filter :authenticate_user!

  def show
    @inventory = Inventory.find(params[:id])
    @new_item = Item.new
  end
end
