class Reservation < ApplicationRecord
  belongs_to :users
  belongs_to :restaurants
end
