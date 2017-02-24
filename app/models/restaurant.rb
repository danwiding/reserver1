class Restaurant < ApplicationRecord
  validates :name, :address, :number_of_seats, :cuisine, presence: true

  mount_uploader :image, ImageUploader
end
