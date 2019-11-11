class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.integer :petplace_id
      t.integer :review_id
      t.string :status

      t.timestamps
    end
  end
end
