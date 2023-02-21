class Bear < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
end
