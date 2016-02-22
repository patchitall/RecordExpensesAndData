class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.integer :trip_id
      t.datetime :start_time
      t.datetime :end_time
      t.float :start_mileage
      t.float :end_mileage
      t.integer :non_travel_time_in_minutes
      t.float :non_work_miles

      t.timestamps null: false
    end
  end
end
