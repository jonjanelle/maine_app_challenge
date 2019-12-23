
class CategoriesController < ApplicationController
    #/categories
    def index 
        render json: Category.all, status: :ok
    end

    private 

    def category_params
        params.require(:category).permit(:name, :description)
    end

end