class Bear < ApplicationRecord
  include PgSearch::Model

  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  validates :name, presence: true

  pg_search_scope :search_name, against: [:name, :location, :size, :color],
  using: {
    tsearch: { prefix: true }
  }
  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
end
