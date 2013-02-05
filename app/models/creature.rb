class Creature < ActiveRecord::Base
  attr_accessible :description, :habitat, :name, :type

  validates_presence_of :name, :description, :habitat
end
