class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :stars
      t.text :content
      t.integer :images_id
      t.integer :photoset_id

      t.timestamps

    end
  end
end
