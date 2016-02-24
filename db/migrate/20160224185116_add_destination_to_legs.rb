class AddDestinationToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :destination, :string
  end
end
