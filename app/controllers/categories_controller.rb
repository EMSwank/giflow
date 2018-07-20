class CategoriesController < ApplicationController
  before_action :require_user, only: [:show]
  before_action :require_admin, only: [:create]
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
      if @category.save
        session[:category_id] = @category.id
        redirect_to categories_path
      else
        render :new
    end

  end

  private

  def require_admin
    render file: "/public/404" unless current_admin?
  end

  def category_params
    params.require(:category).permit(:title)
  end
end