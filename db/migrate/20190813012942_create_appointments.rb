class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.string :hairstyle
      t.string :hair_stylist
      t.integer :user_id
      t.integer :hair_stylist_id
      t.integer :hairstyle_id 

      t.timestamps
    end
  end
end
