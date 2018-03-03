class Book < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :logs, dependent: :destroy
  belongs_to :category
end
