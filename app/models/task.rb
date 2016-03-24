class Task < ActiveRecord::Base
	belongs_to :profile

	#priorities hash for form
	TASK_PRIORITY = [
		['High', 1], 
		['Medium', 2], 
		['Low', 3]
	]
end
