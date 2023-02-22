class UpdateEndBookingDate < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :end_date, :date
  end
end
