class AddOwnerToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_reference :restaurants, :owner, index: true
  end
end
