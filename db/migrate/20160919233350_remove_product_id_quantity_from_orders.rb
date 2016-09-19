class RemoveProductIdQuantityFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :accent_id
    remove_column :orders, :quantity
  end
end
