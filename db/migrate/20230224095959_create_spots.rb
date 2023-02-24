class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.float :price, null: false, default: 0.0
      t.timestamps
    end
  end
end
