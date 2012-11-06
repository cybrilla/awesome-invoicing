class Status < ActiveRecord::Base
  attr_accessible :description, :name
  validates_presence_of :name
end
