class EventsController < ApplicationController

    def new
        @event = Event.new
    end

    def create
        @event = Event.new event_params
        if @event.save
            flash[:notice] = 'Event created successfully'
        else    
            render :new
        end
    end

    def show
       @event = Event.find params[:id]
    end

    def index
        @event = Event.all
    end

    def edit
    end

    def destroy
        flash[:notice] = 'Event destroyed!'
        @event.destroy
    end

    private

    def event_params
        params.require(:event).permit(:title, :description, :price, :location, :participants, :start_time, :image)
    end 

end
