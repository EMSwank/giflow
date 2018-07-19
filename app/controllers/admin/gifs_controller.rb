class Admin::GifsController < Admin::BaseController

  def create
    category = Category.find_or_create_by(title: params[:category])
    gif = category.gifs.new
    if gif.save
      flash[:notice] = "#{category.title} created."
    else
      flash[:error] = "Oops. Try that again."
    end
    redirect_to gifs_path
  end
end