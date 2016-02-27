class AddLabelToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :trip_label, :string
  end
end
