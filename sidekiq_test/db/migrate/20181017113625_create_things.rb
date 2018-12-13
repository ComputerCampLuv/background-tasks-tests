class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.integer :quantity
      t.string :title

      t.timestamps
    end
  end
end
