class Property < ApplicationRecord

  mount_uploader :image, ImageUploader

  belongs_to :account

  has_one_attached :image

  scope :latest, -> { order created_at: :desc }

  scope :filter_by_rooms, -> (rooms) { where rooms: rooms }


end
