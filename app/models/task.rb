class Task < ActiveRecord::Base
    attr_accessible :name, :points, :active
	validates_presence_of :name
	has_many :chore
end
