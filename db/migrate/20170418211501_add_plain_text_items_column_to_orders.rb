class AddPlainTextItemsColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :items, :text
  end
end
