class Appoinment < ApplicationRecord
  has_many :reviews
  belongs_to :users
  belongs_to :petplaces
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, inclusion: { in: ['Approved', 'Pending', 'Canceled'] }
end
