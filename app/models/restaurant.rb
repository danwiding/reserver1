class Restaurant < ApplicationRecord
  belongs_to :owner
  has_many :reservations

  validates :name, :address, :number_of_seats, :cuisine, presence: true

  mount_uploader :image, ImageUploader
end
