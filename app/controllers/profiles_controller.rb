class ProfilesController < ApplicationController
	before_action :authenticate_profile!
	
	def new
	end

	#get current profile user params and get Tasks belongs only to this profile user
	def index
		@profile = current_profile		
		@tasks = Task.where(id_profile: current_profile.id)
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
