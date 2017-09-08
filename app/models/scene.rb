class Scene < ApplicationRecord

  belongs_to :script

  has_many :pictures
  has_many :word_blanks


end