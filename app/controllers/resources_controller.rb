class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :update, :destroy]
  # TODO: Figure out an auth scheme...
  # Before_action :authenticate_user!, except: [:index, :show, :ping]
  
  # GET /resources
  # GET /resources.json
  def index
    result = nil
    if params[:name]
      result = Resource.where("name like ?", "%#{params[:name]}%")
    end
    if params[:resource_type_id]
      result = result.nil? ? Resource.where("resource_type_id like ?", "%#{params[:resource_type_id]}%") : result.where("resource_type_id like ?", "%#{params[:resource_type_id]}%") 
    end
    if result.nil? 
      result = Resource.all
    end
    render json: result, status: :ok
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
    render json: @resource, status: :ok
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(resource_params)
    @resource.view_count = 0
    if @resource.save
      render json: @resource, status: :ok #render :show, status: :created, location: @resource
    else
      render json: @resource.errors, status: :bad_request
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    if @resource.update(resource_params)
      render :show, status: :ok, location: @resource
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource.destroy
  end

  # GET /resources/get_featured
  # GET /resources/get_featured.json
  def get_featured
    render json: Resource.where(is_featured: true), status: :ok
  end

  def ping
    render :ok
  end

  def authorized_ping
    render :json => {status: :ok, message: 'Authorization successful'}.to_json
  end

  private
    def set_resource
      @resource = Resource.where(id: params[:id]).first
      render json: {}, status: :bad_request and return if @resource.nil?
    end

    def resource_params
      params.require(:resource).permit(:name, :description, :is_approved,
                                       :resource_type_id, :url, :image_url, :is_featured )
    end
end
