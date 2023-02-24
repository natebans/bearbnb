class AddCoordinatesToBears < ActiveRecord::Migration[7.0]
  def change
    add_column :bears, :latitude, :float
    add_column :bears, :longitude, :float
  end
end
