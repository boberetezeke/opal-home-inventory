class GroceryItem < ActiveRecord::Base
  belongs_to :grocery_list
  belongs_to :item
end
