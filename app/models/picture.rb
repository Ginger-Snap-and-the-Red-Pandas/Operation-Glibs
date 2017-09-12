class Picture < ApplicationRecord

  belongs_to :story
  belongs_to :scene

  has_attached_file :image, styles: {
    glib: '720x720>'
  }, default_url: "https://glibs-image-bucket.s3-us-east-2.amazonaws.com/public/default.png"

  validates :story_id, :scene_id, :url, presence: :true
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
