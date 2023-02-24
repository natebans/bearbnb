class Bear < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
end
