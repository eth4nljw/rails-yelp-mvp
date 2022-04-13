class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
