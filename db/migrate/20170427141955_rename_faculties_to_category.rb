class RenameFacultiesToCategory < ActiveRecord::Migration[5.0]
  def change
        rename_table :faculties, :categories
  end
end
