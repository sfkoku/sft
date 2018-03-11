class AddIsPublishedToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :is_published, :boolean, default: 0
  end
end
