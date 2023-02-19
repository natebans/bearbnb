class Booking < ApplicationRecord
  attribute :status, :string
  belongs_to :bear

  validates :bear_id, presence: true
  validates :status, presence: true
end
