class Story < ApplicationRecord

  # before_destroy :destroy_all_pictures

  belongs_to :genre
  belongs_to :script

  has_many :pictures, dependent: :delete_all
  has_many :scenes, through: :pictures
  has_many :generated_words, dependent: :delete_all
  has_many :word_blanks, through: :generated_words

  validates :genre_id, :script_id, presence: :true

  def generate_story_url
    if !self.share_url
      unique = false
      until unique
        random_url = ''
        8.times { random_url << random_char }
        unique = unique_url?(random_url)
      end
      self.share_url = random_url
    end
  end

  private

  def unique_url?(generated_url)
    !Story.find_by(share_url: generated_url)
  end

  def random_char
    chars = ('a'..'z').to_a + ('1'..'9').to_a
    chars.sample
  end

  # def destroy_all_pictures
  #   self.pictures.delete_all
  # end
end
