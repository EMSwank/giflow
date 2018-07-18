class CategoriesController < ApplicationController
  before_action :require_admin, except: [:index]

  def index
    @categories = Category.all
  end

  def create
    
  end

  private

  def require_admin
    render file: "/public/404" unless current_admin?
  end

  def category_params
    params.require(:category).permit(:title)
  end
end