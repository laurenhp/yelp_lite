class CreateRestaurantdetails < ActiveRecord::Migration
  def change
    create_table :restaurantdetails do |t|
      t.text :description
      t.text :address
      t.string :website
      t.string :photo
      t.integer :review_id

      t.timestamps

    end
  end
end
