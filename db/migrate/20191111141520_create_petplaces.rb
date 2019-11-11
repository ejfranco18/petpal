class CreatePetplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :petplaces do |t|
      t.string :name
      t.text :details
      t.string :address
      t.string :images
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
