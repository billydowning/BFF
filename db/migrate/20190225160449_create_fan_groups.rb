class CreateFanGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :fan_groups do |t|
      t.string :group_name
      t.string :category
      t.float :price
      t.integer :size
      t.text :description

      t.timestamps
    end
  end
end
