class ResourceCategoriesController < ApplicationController
  
  def create
      resource_category = ResourceCategory.new(resource_category_params)
      if resource_category.save
        render json: resource_category, status: :ok 
      else
        render json: resource_category.errors, status: :bad_request
      end
  end

  private

  def resource_category_params
    params.require(:resource_category).permit(:resource_id, :category_id)
  end

end