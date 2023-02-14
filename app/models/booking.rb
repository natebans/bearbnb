class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bear

  validates :user_id, :bear_id, presence: true
end
