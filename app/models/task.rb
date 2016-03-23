class Task < ActiveRecord::Base
	belongs_to :profile

	#priorities hash for form
	TASK_PRIORITY = [
		['HIGH', 1], 
		['MEDIUM', 2], 
		['LOW', 3]
	]
end
