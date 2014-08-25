class AddGroceryLists < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|
      t.timestamps
    end

    create_table :inventories do |t|
      t.timestamps
    end
  end
end
