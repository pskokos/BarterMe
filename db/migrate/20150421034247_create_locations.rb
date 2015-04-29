class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :zip

      t.timestamps
    end
  end
end
