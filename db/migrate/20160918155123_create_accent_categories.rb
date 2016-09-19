class CreateAccentCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :accent_categories do |t|

      t.timestamps
    end
  end
end
