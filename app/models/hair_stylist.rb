class HairStylist < ApplicationRecord
  has_many :users, through: :appointments
  validates :name, presence: true
end
