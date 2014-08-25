class InventoryItem < ActiveRecord::Base
  belongs_to :inventory
  belongs_to :item
end
