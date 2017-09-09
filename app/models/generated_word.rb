class GeneratedWord  < ApplicationRecord

  belongs_to :story
  belongs_to :word_blank

  validates :word, :story_id, :word_blank_id, presence: :true

end
