class AddInitialColumnsToOrderModel < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :items, :array
  end
end
