class TasksController < ApplicationController
	
	def index
		@tasks = Task.where(id_profile: current_profile.id)
	end

	def new
		@tasks = Task.new
	end

	def create
		@task = Task.new task_params
		@task.id_profile = current_profile.id

		@task.save

		redirect_to root_path
	end

	def edit
	end

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
