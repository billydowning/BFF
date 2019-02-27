class AddCityToFanGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :fan_groups, :city, :string
  end
end
