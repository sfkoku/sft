class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :faculty, :string, null: false
    add_column :users, :department, :string, null: false
    add_column :users, :year, :string, null: false
  end
end
