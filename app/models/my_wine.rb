class MyWine < ApplicationRecord
  # Direct associations

  belongs_to :wines,
             :foreign_key => "wine_id",
             :counter_cache => true

  # Indirect associations

  # Validations

end
