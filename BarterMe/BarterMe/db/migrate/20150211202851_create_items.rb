class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :user, index:true
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :user_id
      t.integer :product_key
      t.integer :type_id
      t.string :location
      t.integer :quantity
      t.integer :post_date
      t.integer :test2

      t.timestamps
    end
    add_column :items, :item_id, :integer
  end
end
