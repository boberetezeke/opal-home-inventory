class ItemsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @item = Item.new
    @container_type = params[:container_type]
    @container_id = params[:container_id]
  end

  def create
    @item = Item.new(item_params)
    if params[:container_type] == 'grocery_list'
      container = current_user.grocery_lists.where(id: params[:container_id]).first
      container_path = grocery_list_path(container.id)
      container_link_item = GroceryItem.new(grocery_list: container, item: @item)
    else
      container = current_user.inventory
      container_path = inventory_path(current_user.inventory.id)
      container_link_item = InventoryItem.new(inventory: container, item: @item)
    end

    if @item.save
      container_link_item.save
      redirect_to container_path
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to show_path(@item)
    else
      render 'edit'
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
