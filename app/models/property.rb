class Property < ApplicationRecord

  mount_uploader :image, ImageUploader

  belongs_to :account

  has_one_attached :image

  has_many_attached :images

  scope :latest, -> { order created_at: :desc }

  scope :filter_by_rooms, -> (rooms) { where rooms: rooms }


end
