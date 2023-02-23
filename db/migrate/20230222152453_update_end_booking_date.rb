class UpdateEndBookingDate < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :end_date, 'date USING CAST(end_date AS date)'
  end
end
