class ChangeColumnToUser < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :faculty, :integer
  end

  def down
    change_column :users, :faculty, :string, null: false
  end
end
