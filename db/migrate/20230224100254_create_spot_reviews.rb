class CreateSpotReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :spot_reviews do |t|
      t.references :spot, index: true
      t.text :description, null: false
      t.timestamps
    end
  end
end
