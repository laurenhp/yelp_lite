class CreatePhotosets < ActiveRecord::Migration
  def change
    create_table :photosets do |t|
      t.text :description

      t.timestamps

    end
  end
end
