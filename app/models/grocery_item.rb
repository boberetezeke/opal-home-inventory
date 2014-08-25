class GroceryItem < ActiveRecord::Base
  belongs_to :grocery_list
  belongs_to :item
  belongs_to :user
end
