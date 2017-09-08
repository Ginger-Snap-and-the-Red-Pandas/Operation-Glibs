class WordBlank < ApplicationRecord

  belongs_to :scene

  has_many :generated_words


end