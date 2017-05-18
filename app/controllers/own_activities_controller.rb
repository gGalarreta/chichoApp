class OwnActivitiesController < ApplicationController
  layout "admin" 

	def index
		@activities = current_user.user_activities
	end
end
