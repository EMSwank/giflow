class FavoritesController < ApplicationController
  before_action :require_user

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.create(favorite_params)
    redirect_to user_path(params[:user_id])
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :gif_id)
  end
end