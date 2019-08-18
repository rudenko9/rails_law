class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hair_stylist

  validates :content, :presence => true

end
