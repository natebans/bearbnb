class Booking < ApplicationRecord
  belongs_to :bear
  belongs_to :user

  # validates :bear_id, presence: true
end
