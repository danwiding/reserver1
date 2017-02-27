class Restaurant < ApplicationRecord
  belongs_to :owner

  validates :name, :address, :number_of_seats, :cuisine, presence: true

  mount_uploader :image, ImageUploader
end
