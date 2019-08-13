class Hairstyle < ApplicationRecord
  belongs_to :user
  belongs_to :hair_stylist
  validates :haircut, presence: true
  validates :coloring, presence: true
  validates :haircut_and_coloring, presence: true
end
