class Genre < ApplicationRecord

  has_many :scripts
  has_many :scenes, through: :scripts
  has_many :stories
  has_many :pictures, through: :stories

end