class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :listing_id
      t.string :listing_url
      t.string :listing_image_url
      t.text :listing_name
      t.decimal :listing_price, precision: 5, scale: 2

      t.timestamps null: false
    end
  end
end
