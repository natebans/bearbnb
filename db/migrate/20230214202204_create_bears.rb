class CreateBears < ActiveRecord::Migration[7.0]
  def change
    create_table :bears do |t|
      t.string :name
      t.string :location
      t.string :size
      t.float :price
      t.string :color
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
