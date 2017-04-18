class AddItemsArrayColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :items, :text, default: [].to_yaml
  end
end
