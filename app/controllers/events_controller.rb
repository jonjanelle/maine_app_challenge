class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]
  #before_action :authenticate_user!, except: [:index, :show]
  
  # GET /events
  # GET /events.json
  def index
    render json: Event.all, status: :ok
  end

  # GET /events/1
  # GET /events/1.json
  def show
      render json: @event, status: :ok
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    if @event.save
      render :show, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    if @event.update(event_params)
      render :show, status: :ok, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
  end

  # GET /events/get_featured
  # GET /events/get_featured.json
  def get_featured
    render json: Event.where(is_featured: true), status: :ok
  end

  def ping
    render :ok
  end

  private
    def set_event
      @event = Event.where(id: params[:id]).first
      render json: {}, status: :bad_request and return if @event.nil?
    end

    def event_params
      params.require(:event).permit(:name, :description, :max_participants, :cost, 
                                    :start_date, :end_date, 
                                    :is_approved, :image_url, :is_featured)
    end
end
