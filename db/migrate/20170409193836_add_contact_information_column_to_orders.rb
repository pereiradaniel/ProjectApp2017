class AddContactInformationColumnToOrders < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :contact_information, :text
  end
end
