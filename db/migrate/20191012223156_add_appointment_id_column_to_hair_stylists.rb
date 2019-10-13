class AddAppointmentIdColumnToHairStylists < ActiveRecord::Migration[5.2]
  def change
  add_column :hair_stylists, :appointment_id , :integer  
    end

  end
