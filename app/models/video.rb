class Video < ActiveRecord::Base
  validates_presence_of :name, :audio_url
  validates_uniqueness_of :name
  has_many :video_images
end
