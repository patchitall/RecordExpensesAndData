class AddDestinationToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :destination, :string
  end
end
