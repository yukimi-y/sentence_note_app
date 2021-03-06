class Note < ApplicationRecord
  belongs_to :user

  validates :title, length: { maximum: 30 }

  mount_uploader :image, ImageUploader
end
