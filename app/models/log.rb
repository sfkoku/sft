class Log < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum is_processed: {x: 0,v: 1}
end
