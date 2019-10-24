class Appointment < ApplicationRecord
  validates :date_time, presence: true
  validates :hair_stylist, presence: true
  validates :hairstyle, presence: true
  validate :valid_appt
  belongs_to :user
  belongs_to :hair_stylist




  def self.style_names
    [ 'haircut', 'coloring', 'haircut_and_coloring']
 end



private

def valid_appt
  if date_time < Date.today
    errors.add(:date_time, 'Appointments Must Be Scheduled At Least One Day in Advance')
  end
end

end
