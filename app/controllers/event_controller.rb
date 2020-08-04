class EventController < ApplicationController

    def new
        @event = event.new
    end

    def create
        @event = event.new event_prams
        if @event.save
            flash[:notice] = 'Event created successfully'
        else    
            render :new
        end
    end

    def show
       @event = event.find params[:id]
    end

    def index
        @event = event.all
    end

    def edit
    end

    def destroy
        flash[:notice] = 'Event destroyed!'
        @event.destroy
    end


end
