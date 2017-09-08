class Script < ApplicationRecord

  belongs_to :genre

  has_many :stories
  has_many :scenes


end