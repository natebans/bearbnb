class Bear < ApplicationRecord
  include PgSearch::Model

  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true

  pg_search_scope :search_name, against: [:name, :location, :size, :color],
  using: {
    tsearch: { prefix: true }
  }
end
