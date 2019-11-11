class CreateAppoinments < ActiveRecord::Migration[5.2]
  def change
    create_table :appoinments do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.references :user
      t.references :petplace

      t.timestamps
    end
  end
end
