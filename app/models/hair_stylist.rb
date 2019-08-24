class HairStylist < ApplicationRecord
  has_many :users, through: :appointments
  has_many :reviews
  has_many :appointments
  validates :name, presence: true
  #validates :image, presence: true

scope :max_appointments, -> {where(id: Appointment.maximum(:hair_stylist_id)).first}




end
