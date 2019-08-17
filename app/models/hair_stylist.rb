class HairStylist < ApplicationRecord
  has_many :users, through: :appointments
  has_many :appointment
  validates :name, presence: true
  validates :image, presence: true

  def self.name
    [ 'Matilda', 'Nicholas', 'Evan', 'Eva','Maria']
  end

end
