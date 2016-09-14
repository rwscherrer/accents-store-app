class RemoveImageFromAccent < ActiveRecord::Migration[5.0]
  def change
    remove_column :accents, :image, :string
  end
end
