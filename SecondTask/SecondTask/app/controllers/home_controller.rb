class HomeController < ApplicationController
	before_action :authenticate_user!, :except => [:index]
	def index
		if (user_signed_in?)
		@events = current_user.events
		@events_by_date = @events.group_by(&:event_date)
	end
	@date = params[:date] ? Date.parse(params[:date]) : Date.today
	end
end
