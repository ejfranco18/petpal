class CreatePetplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :petplaces do |t|
      t.string :name
      t.text :details
      t.string :address
      t.integer :price
      t.string :images
      t.references :user

      t.timestamps
    end
  end
end
