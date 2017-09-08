class Story < ApplicationRecord

  belongs_to :genre
  belongs_to :script

  has_many :pictures
  has_many :scenes, through: :pictures
  has_many :generated_words
  has_many :word_blanks, through: :generated_words


end