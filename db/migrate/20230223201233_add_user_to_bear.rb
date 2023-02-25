class AddUserToBear < ActiveRecord::Migration[7.0]
  def change
    add_reference :bears, :user, null: false, foreign_key: true
  end
end
