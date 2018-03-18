class Log < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum is_processed: {x: 0,v: 1}

  def self.get_current_user_log(user_id, book_id)
    where(user_id: user_id).where(book_id: book_id)
  end

  def book_time
    (self.created_at + 9.hours).strftime("%Y/%m/%d %H:%M")
  end
end
