class UpdateBookingDates < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :start_date, 'date USING CAST(start_date AS date)'
  end
end
