class Script < ApplicationRecord

  belongs_to :genre

  has_many :stories
  has_many :pictures, through: :stories
  has_many :scenes
  has_many :word_blanks, through: :scenes

  validates :name, :genre_id, presence: :true

  def script_dialogue
    scene_dialogues = self.scene_dialogues
    scene_dialogues.join(" ")
  end

  def scene_dialogues
    self.scenes.map{|scene| scene.dialogue}
  end
end
