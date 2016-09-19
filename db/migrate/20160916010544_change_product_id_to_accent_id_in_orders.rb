class ChangeProductIdToAccentIdInOrders < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_id, :accent_id
  end
end
