class Restuarant < ApplicationRecord
  # Direct associations

  belongs_to :details,
             :class_name => "Restaurantdetail"

  # Indirect associations

  # Validations

end
