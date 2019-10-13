class HairStylist < ApplicationRecord
  has_many :users, through: :appointments
  has_many :reviews
  has_many :appointments
  validates :name, presence: true
  belongs_to :appointment


scope :max_appointments, -> {Appointment.group(:hair_stylist_id).order('count_id DESC').count(:id).first}

end
