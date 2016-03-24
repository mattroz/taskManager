module TasksHelper

	def task_priority_style(task)
		case task.priority
		#highest priority
		when 1
			style = "danger"
		#medium priority
		when 2
			style = "warning"
		#low priority
		when 3
			style = "success"
		else
			style = "active"
		end
	end


	def get_task_date(task)
		_str = task.updated_at.to_s[0..9]
	end
end
