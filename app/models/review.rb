class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hair_stylist
  has_many :users, through: :reviews

  validates :content, :presence => true

end
