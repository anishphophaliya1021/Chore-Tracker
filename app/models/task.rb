class Task < ActiveRecord::Base
    attr_accessible :name, :points, :active
end
