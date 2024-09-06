class AddFieldsToCharacters < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :class_name, :string
    add_column :characters, :race, :string
    add_column :characters, :level, :integer
    add_column :characters, :background, :string
    add_column :characters, :alignment, :string
  end
end
