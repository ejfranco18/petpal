class Review < ApplicationRecord
  belongs_to :appointments
  validates :rating, presence: true
  validates :description, presence: true
end
