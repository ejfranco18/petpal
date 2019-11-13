class AddCoordinatesToPetplaces < ActiveRecord::Migration[5.2]
  def change
    add_column :petplaces, :latitude, :float
    add_column :petplaces, :longitude, :float
  end
end
