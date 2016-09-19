class AddCategoryIdToAccentCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :accent_categories, :category_id, :integer
  end
end
