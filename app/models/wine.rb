class Wine < ApplicationRecord
  # Direct associations

  belongs_to :varietal,
  :counter_cache => true

  has_many   :wine_tag_pairs,
  :foreign_key => "tag_id",
  :dependent => :destroy

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
  #
  # validates(:varietal,{:presence => true, :uniqueness => true})
  # # validates :varietal, uniqueness: true, presence: true
  # #     message: "should be uniqe varietal" }
end
