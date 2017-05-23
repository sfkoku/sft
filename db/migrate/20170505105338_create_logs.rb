class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.integer :user_id, null: false
      t.integer :book_id, null:false
      t.integer :count, default: 1 , null: false
      t.integer :is_processed, default: 0, null: false

      t.timestamps
    end
  end
end
