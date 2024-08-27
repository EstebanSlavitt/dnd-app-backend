class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :class_name
      t.string :race
      t.integer :level
      t.string :background
      t.string :alignment

      t.timestamps
    end
  end
end
