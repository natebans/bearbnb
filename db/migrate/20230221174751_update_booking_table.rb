class UpdateBookingTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :user, index: true
    add_foreign_key :bookings, :users
  end
end
