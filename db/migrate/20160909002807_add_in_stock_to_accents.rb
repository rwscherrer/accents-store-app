class AddInStockToAccents < ActiveRecord::Migration[5.0]
  def change
    add_column :accents, :in_stock, :boolean
  end
end
