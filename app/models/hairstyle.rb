class Hairstyle < ApplicationRecord
  belongs_to :user
  validates :haircut, presence: true
  validates :coloring, presence: true
  validates :haircut_and_coloring, presence: true
end
