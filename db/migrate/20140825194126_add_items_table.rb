class AddItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.timestamp
    end

    create_table :inventory_items do |t|
      t.integer :item_id
      t.integer :inventory_id
      t.timestamp
    end

    create_table :grocery_items do |t|
      t.integer :item_id
      t.integer :grocery_list_id
      t.timestamp
    end
  end
end
