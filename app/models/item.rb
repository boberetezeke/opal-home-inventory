class Item < ActiveRecord::Base
  has_many :inventory_items
  has_many :grocery_items
end
