#require 'pry'
class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :update, :destroy]
  # TODO: Figure out an auth scheme
  # Before_action :authenticate_user!, except: [:index, :show, :ping]
  
  # GET /resources
  def index
    result = Resource.where(is_approved: true)
    if params[:name]
      result = Resource.where("name ILIKE ?", "%#{params[:name].parameterize}%")
    end

    if params[:resource_type_id]
      result = result.where(resource_type_id: params[:resource_type_id]) 
    end

    render json: result, status: :ok
  end

  # GET /resources/1
  def show
    render json: @resource, status: :ok
  end

  # POST /resources
  def create
    @resource = Resource.new(resource_params)
    @resource.is_approved = false 
    @resource.view_count = 0
    if @resource.save
      render json: @resource, status: :ok #render :show, status: :created, location: @resource
    else
      render json: @resource.errors, status: :bad_request
    end
  end

  # PATCH/PUT /resources/1
  def update
    if @resource.update(resource_params)
      render :show, status: :ok, location: @resource
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resources/1
  def destroy
    @resource.destroy
  end

  # GET /resources/get_featured
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
