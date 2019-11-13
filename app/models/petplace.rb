class Petplace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :appointments
  has_many :reviews, through: :appointments
  validates :name, presence: true
  validates :details, presence: true
  validates :images, presence: true
  validates :price, presence: true
end
