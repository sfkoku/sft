class RenameFacultyIdColumnToBooks < ActiveRecord::Migration[5.0]
  def change
      rename_column :books, :faculty_id, :category_id
  end
end
