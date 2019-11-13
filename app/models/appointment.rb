class Appointment < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :petplace
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, inclusion: { in: ['selected', 'pending', 'accepted', 'canceled', 'in-past'] }
end
