class User < ApplicationRecord
  has_many :petplaces
  has_many :appointments
  has_many :reviews, through: :appointments
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :role, inclusion: { in: ['Pet Sitter', 'Pet Owner'] }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
