class Admin::CategoriesController < Admin::BaseController

  def index
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      session[:category_id] = @category.id
      flash[:success] = "Category created!"
      redirect_to admin_categories_path
    else
      flash[:error] = "Something went wrong. Try again."
      render :new
    end

  end

  private

  def category_params
    params.require(:category).permit(:title)
  end

end