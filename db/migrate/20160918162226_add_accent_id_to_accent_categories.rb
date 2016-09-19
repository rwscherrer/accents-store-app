class AddAccentIdToAccentCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :accent_categories, :accent_id, :integer
  end
end
