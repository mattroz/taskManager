class TasksController < ApplicationController
	
	#get Tasks belongs only to this profile user
	def index
		@tasks = Task.where(id_profile: current_profile.id)
	end

	def new
		@tasks = Task.new
	end

	#create new Task, check params
	#and associate it with the current profile user
	def create
		@task = Task.new task_params
		@task.id_profile = current_profile.id

		@task.save

		redirect_to root_path
	end

	def edit
		@tasks = Task.find(params[:id])
	end

	#get current task we want to edit, change some attributes at the editing form
	#and then update task with new attributes with checking it with task_params function
	def update
		@tasks = Task.find(params[:id])
		@tasks.update_attributes task_params
		@tasks.save

		redirect_to root_path

	end

	#delete chosen Task and redirect to root
	def destroy
		@task = Task.find(params[:id])
		@task.destroy!

		redirect_to root_path
	end

	private
	
	def task_params
		params.require(:task).permit([:title, :priority, :completed])
	end
end
