class TastingNoteTag < ApplicationRecord
  # Direct associations

  has_one    :wine_tag_pair,
             :foreign_key => "tag_id",
             :dependent => :destroy

  belongs_to :tasting_note,
             :class_name => "Wine",
             :foreign_key => "tasting_note_name"

  # Indirect associations

  # Validations

end
