class Scene < ApplicationRecord

  belongs_to :script

  has_many :pictures
  has_many :stories, through: :pictures
  has_many :word_blanks
  has_many :generated_words, through: :word_blanks

  validates :script_id, :dialogue, :script_position, presence: :true


  def next
    self.class.where('id > ?', id).first
  end

  def previous
    self.class.where('id < ?', id).last
  end
end
