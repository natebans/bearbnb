class Bear < ApplicationRecord
  has_many :bookings
  belong_to :user
  has_one_attached :photo
  validates :name, presence: true
end
