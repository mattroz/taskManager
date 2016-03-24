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
		_time = task.updated_at.to_formatted_s(:long)
	end

	# def complete(task)
	# 	task.completed = true
	# end
end
