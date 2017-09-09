class Picture < ApplicationRecord

  belongs_to :story
  belongs_to :scene

  validates :story_id, :scene_id, :url, presence: :true
end
