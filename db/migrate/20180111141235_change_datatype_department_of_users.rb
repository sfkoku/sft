class ChangeDatatypeDepartmentOfUsers < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :department, :integer
  end

  def down
    change_column :users, :department, :string, null: false
  end
end
