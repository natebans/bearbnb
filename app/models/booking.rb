class Booking < ApplicationRecord
  attribute :status, :string
  belongs_to :bear
  belongs_to :user

  validates :bear_id, presence: true
  validates :status, presence: true
end
