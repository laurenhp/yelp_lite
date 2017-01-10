class Restaurantdetail < ApplicationRecord
  # Direct associations

  has_many   :restuarants,
             :foreign_key => "details_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
