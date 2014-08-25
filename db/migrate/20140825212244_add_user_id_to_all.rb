class AddUserIdToAll < ActiveRecord::Migration
  def change
    add_column :grocery_items, :user_id, :integer
    add_column :inventory_items, :user_id, :integer
    add_column :items, :user_id, :integer
  end
end
