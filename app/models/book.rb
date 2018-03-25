class Book < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :logs, dependent: :destroy
  belongs_to :category
  scope :get_by_title, ->(title){
    where("title like ?", "%#{title}%")
  }
  scope :is_stocked, ->{ where("count > 0") }
  scope :is_published, ->{ where(is_published: 1)}
end
