class Booking < ApplicationRecord
  attribute :confrimation, :string
  belongs_to :bear
  belongs_to :user

  validates :bear_id, presence: true
  validates :confirmation, presence: true
end
