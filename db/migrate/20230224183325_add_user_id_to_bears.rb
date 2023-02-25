class AddUserIdToBears < ActiveRecord::Migration[7.0]
  def change
    add_reference :bears, :user, index: true
  end
end
