class Wine < ApplicationRecord
  # Direct associations

  has_many   :my_wines,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
