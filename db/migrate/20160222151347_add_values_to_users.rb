class AddValuesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :employeeidentifier, :string
    add_column :users, :organization, :string
    add_column :users, :supervisor, :string
  end
end
