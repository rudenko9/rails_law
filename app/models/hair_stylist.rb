class HairStylist < ApplicationRecord
  has_many :users, through: :appointments
  validates :name, presence: true
  validates :image, presence: true

  def stylist_names
    ['Matilda', 'Nicholas', 'Evan', 'Eva','Maria']
  end
end
