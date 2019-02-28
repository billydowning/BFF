class AddPhotoToFanGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :fan_groups, :photo, :string
  end
end
