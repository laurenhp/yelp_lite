class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :photoset

  # Indirect associations

  # Validations

end
