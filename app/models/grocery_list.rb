class GroceryList < ActiveRecord::Base
  belongs_to :user
  has_many   :grocery_items

  scope :newest_first, -> { order('created_at desc') }
end
