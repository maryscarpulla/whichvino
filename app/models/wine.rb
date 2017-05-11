class Wine < ApplicationRecord
  # Direct associations

  has_many   :suggested_wines,
             :dependent => :destroy

  has_many   :bucket_list_wines,
             :dependent => :destroy

  has_many   :tasting_note_tags,
             :foreign_key => "tasting_note_name",
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  has_many   :my_wines,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
