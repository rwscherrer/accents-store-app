class ChangeProductIdToAccentId < ActiveRecord::Migration[5.0]
  def change

    rename_column :images, :product_id, :accent_id
  end
end
