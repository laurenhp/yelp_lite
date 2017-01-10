class Post < ApplicationRecord
  # Direct associations

  has_many   :users,
             :foreign_key => "posts_id",
             :dependent => :destroy

  belongs_to :review

  # Indirect associations

  # Validations

end
