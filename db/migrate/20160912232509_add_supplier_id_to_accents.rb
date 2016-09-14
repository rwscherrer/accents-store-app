class AddSupplierIdToAccents < ActiveRecord::Migration[5.0]
  def change
    add_column :accents, :supplier_id, :integer
  end
end
