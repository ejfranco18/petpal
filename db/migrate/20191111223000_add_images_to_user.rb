class AddImagesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_image, :string
    add_column :users, :pet_image, :string
  end
end
