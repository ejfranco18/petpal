class User < ApplicationRecord
  has_many :petplaces
  has_many :appointments
  has_many :reviews, through: :appointments
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true, inclusion: { in: ['Pet Sitter', 'Pet Owner'] }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
