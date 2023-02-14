class Bear < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :user_id, presence: true
end
