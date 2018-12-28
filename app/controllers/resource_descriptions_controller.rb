class ResourceDescriptionsController < ApplicationController
    # GET /resource_descriptions
    def index
      result = Resource.includes(:resource_categories).where(is_approved: true)
      if params[:name]
        result = result.where("name ILIKE ?", "%#{params[:name].parameterize}%")
      end
  
      if params[:resource_type_id]
        result = result.where(resource_type_id: params[:resource_type_id]) 
      end
      
      render json: build_response(result), status: :ok
    end
  
    # GET /resource_descriptions/1
    def show
      render json: build_response(Resource.where(id: params[:id])), status: :ok
    end

    def ping
      render :ok
    end
  
    private

      def build_response(resource_collection) 
        if resource_collection.nil?
          []
        else
          resource_collection.map do |r|
            ({"resource": r, 
            "categories": r.resource_categories.map(&:category),
            "likes": r.resource_likes.where(resource_id: r.id, value: 1).count, 
            "dislikes": r.resource_likes.where(resource_id: r.id, value: -1).count})
          end
        end
      end
  
  end
  