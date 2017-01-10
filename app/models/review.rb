class Review < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :restaurantdetails,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
