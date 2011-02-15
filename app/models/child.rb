class Child < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :active
	has_many :chore
	validates_presence_of :first_name,:last_name
	# Virtual attribute for Child model
	def name
		"#{first_name} #{last_name}"
	end
end
