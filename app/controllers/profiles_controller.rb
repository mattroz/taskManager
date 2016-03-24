class ProfilesController < ApplicationController
	before_action :authenticate_profile!
	
	def new
	end

	#get current profile user params and get Tasks belongs only to this profile user
	def index
		@profile = current_profile		
		
		@uncompleted_tasks = Task.where(id_profile: current_profile.id, completed: false)
		@completed_tasks = Task.where(id_profile: current_profile.id, completed: true)
	end

	def create
	end

	def edit
	end

	def delete
	end

	def destroy
		redirect_to action: "new"
	end
end
