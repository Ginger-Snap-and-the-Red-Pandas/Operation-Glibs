class Story < ApplicationRecord

  # before_destroy :destroy_all_pictures

  belongs_to :genre
  belongs_to :script

  has_many :pictures, dependent: :delete_all
  has_many :scenes, through: :pictures
  has_many :generated_words, dependent: :delete_all
  has_many :word_blanks, through: :generated_words

  validates :genre_id, :script_id, presence: :true

  private

  # def destroy_all_pictures
  #   self.pictures.delete_all
  # end
end
