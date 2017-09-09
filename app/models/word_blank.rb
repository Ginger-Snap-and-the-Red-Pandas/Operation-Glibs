class WordBlank < ApplicationRecord

  belongs_to :scene

  has_many :generated_words

  validates :scene_id, :scene_position, :word_type, presence: :true
end
