class AddUsersId < ActiveRecord::Migration
  def change
    add_column :grocery_lists, :user_id, :integer
    add_column :inventories, :user_id, :integer
  end
end
