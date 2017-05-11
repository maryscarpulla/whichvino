class Wine < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  has_many   :my_wines,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
