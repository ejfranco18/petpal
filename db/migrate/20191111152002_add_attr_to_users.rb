class AddAttrToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :pet_name, :string
    add_column :users, :pet_type, :string
    add_column :users, :role, :string
  end
end
