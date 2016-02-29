class AddZoneToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :time_zone, :integer
  end
end
