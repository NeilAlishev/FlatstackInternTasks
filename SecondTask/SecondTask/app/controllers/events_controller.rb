class EventsController < ApplicationController

  def new
  end
  
  def show
  @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id]) 
  end

  def update
     @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to @event
    else
      render edit_event_path
    end
  end


  def create
    @event = current_user.events.new(event_params)
    if(@event.save)
    redirect_to home_index_path
    else
    render new_event_path
  end
  end

  private
  def event_params
    params.require(:event).permit(:name, :event_date)
  end
end
