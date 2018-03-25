class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :faculty, :integer, null: false
    add_column :users, :department, :integer, null: false
    add_column :users, :year, :integer, null: false
  end
end
