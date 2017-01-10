class Review < ApplicationRecord
  # Direct associations

  has_many   :restaurantdetails,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
