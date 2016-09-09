class ChangeStringInDescription < ActiveRecord::Migration[5.0]
  def change
    change_column :accents, :description, :text
  end
end
