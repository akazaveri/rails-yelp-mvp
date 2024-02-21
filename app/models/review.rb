class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant

  validates :rating, presence: true, acceptance: { accept: RATING }, numericality: { only_integer: true }
  validates :content, presence: true
end
