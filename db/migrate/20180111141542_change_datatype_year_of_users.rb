class ChangeDatatypeYearOfUsers < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :year, :integer
  end

  def down
    change_column :users, :year, :string, null: false
  end
end
