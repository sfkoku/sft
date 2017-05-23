class Book < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :logs
end
