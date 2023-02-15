class Booking < ApplicationRecord
  belongs_to :bear

  validates :bear_id, presence: true
end
