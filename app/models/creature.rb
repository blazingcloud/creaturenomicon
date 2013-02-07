class Creature < ActiveRecord::Base
  attr_accessible :description, :habitat, :name, :creature_type, :picture, :attachment, :picture_cache

  mount_uploader :picture, PictureUploader

  validates_presence_of :name, :description, :habitat
end
