class CreateCartedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.string :product_id
      t.string :integer
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
