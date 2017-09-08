class Scene < ApplicationRecord

  belongs_to :script

  has_many :pictures
  has_many :stories, through: :pictures
  has_many :word_blanks
  has_many :generated_words, through: :word_blanks


end