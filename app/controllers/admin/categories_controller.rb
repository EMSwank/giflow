class Admin::CategoriesController < Admin::BaseController
 before_action :require_admin
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      session[:category_id] = @category.id
      flash[:success] = "Category created!"
      redirect_to gifs_path
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