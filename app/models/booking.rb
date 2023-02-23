class Booking < ApplicationRecord
  belongs_to :bear
  belongs_to :user
end
