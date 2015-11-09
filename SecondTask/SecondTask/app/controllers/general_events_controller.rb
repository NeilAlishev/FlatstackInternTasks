class GeneralEventsController < ApplicationController
	def index
		@events = Event.all
		@events_by_date = @events.group_by(&:event_date)
        @date = params[:date] ? Date.parse(params[:date]) : Date.today
	end
end
