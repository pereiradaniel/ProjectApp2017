class AddDeliveryAddressColumnToOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :delivery_address, :text
  end
end
