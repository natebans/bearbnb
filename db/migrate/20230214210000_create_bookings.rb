class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :bear, null: false, foreign_key: true
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
