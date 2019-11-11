class Review < ApplicationRecord
  belongs_to :reviews
  validates :rating, presence: true
  validates :description, presence: true
end
