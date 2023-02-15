class AddPictureUrlToBears < ActiveRecord::Migration[7.0]
  def change
    add_column :bears, :picture_url, :string
  end
end
