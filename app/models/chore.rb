class Chore < ActiveRecord::Base
    attr_accessible :child_id, :task_id, :due_on, :completed
	# Virtual attribute for Chore model
	def status
		return "Pending" if !completed
		"Completed"
	end
	belongs_to :child
	belongs_to :task
	validates_inclusion_of :child_id, :in => Child.all.map{|c| c.id}
	validates_inclusion_of :task_id, :in => Task.all.map{|c| c.id}
	scope :all, order(:due_on)
	scope :upcoming, where("due_on > ?",Time.now)
	scope :incomplete, where(:completed => false)
	scope :incomplete, where(:completed => true)
end
