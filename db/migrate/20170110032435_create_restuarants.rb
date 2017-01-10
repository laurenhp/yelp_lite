class CreateRestuarants < ActiveRecord::Migration
  def change
    create_table :restuarants do |t|
      t.string :name
      t.string :rating
      t.string :number_of_review
      t.integer :details_id

      t.timestamps

    end
  end
end
