class CategoriesController < ApplicationController
  before_action :require_user, only: [:show]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def require_admin
    render file: "/public/404" unless current_admin?
  end

  def category_params
    params.require(:category).permit(:title)
  end
end