class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :fan_group, foreign_key: true
      t.string :date
      t.string :time
      t.string :location

      t.timestamps
    end
  end
end
