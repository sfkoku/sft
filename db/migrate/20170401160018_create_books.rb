class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title ,null: false
      t.string :author
      t.integer :price , null:false
      t.integer :faculty_id
      t.integer :count ,null:false, default:1

      t.timestamps
    end
  end
end
