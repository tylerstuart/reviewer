class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :zip
      t.string :rating
      t.string :review
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
