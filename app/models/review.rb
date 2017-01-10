class Review < ApplicationRecord
  # Direct associations

  belongs_to :photoset

  belongs_to :user

  has_many   :posts,
             :dependent => :destroy

  has_many   :restaurantdetails,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
