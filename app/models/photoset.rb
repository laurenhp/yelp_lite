class Photoset < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
