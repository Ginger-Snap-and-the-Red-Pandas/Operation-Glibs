class Genre < ApplicationRecord

  has_many :scripts
  has_many :stories
  has_many :scenes, through: :scripts




end