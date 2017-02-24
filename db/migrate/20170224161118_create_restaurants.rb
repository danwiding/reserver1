class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :number_of_seats
      t.string :cuisine

      t.timestamps
    end
  end
end
