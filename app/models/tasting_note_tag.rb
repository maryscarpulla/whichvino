class TastingNoteTag < ApplicationRecord
  # Direct associations

  belongs_to :tasting_note,
             :class_name => "Wine",
             :foreign_key => "tasting_note_name"

  # Indirect associations

  # Validations

end
