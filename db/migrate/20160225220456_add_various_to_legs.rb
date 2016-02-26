class AddVariousToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :date, :date
    add_column :legs, :next_day, :boolean
    add_column :legs, :start_time, :time
    add_column :legs, :end_time, :time
  end
end
