class Restaurantdetail < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :review

  has_many   :restuarants,
             :foreign_key => "details_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
