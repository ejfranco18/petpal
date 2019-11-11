class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description
      t.string :images
      t.references :appoinment

      t.timestamps
    end
  end
end
