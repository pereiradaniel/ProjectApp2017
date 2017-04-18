class RemoveItemsText < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :items
  end
end
