class ChangeProductIdToAccentIdInCartedProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_products, :product_id, :accent_id
  end
end
