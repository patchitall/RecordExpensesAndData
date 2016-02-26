class RemoveVariousFromLegs < ActiveRecord::Migration
  def change
    remove_column :legs, :start_time, :datetime
    remove_column :legs, :end_time, :datetime
  end
end
