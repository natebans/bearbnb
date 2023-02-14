class User < ApplicationRecord
  has_many :bears
  has_many :bookings

  validates :name, :email, :password, presence: true
  validates :name, :email, uniqueness: true
end
