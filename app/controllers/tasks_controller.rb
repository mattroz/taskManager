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
	end

	#delete existing Task and redirect to root
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
