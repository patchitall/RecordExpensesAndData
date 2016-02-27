class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.date :report_start
      t.date :report_end

      t.timestamps null: false
    end
  end
end
