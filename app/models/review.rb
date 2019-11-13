class Review < ApplicationRecord
  belongs_to :appointment
  validates :rating, presence: true
  validates :description, presence: true
end
