class Chore < ActiveRecord::Base
    attr_accessible :child_id, :task_id, :due_on, :completed
end
