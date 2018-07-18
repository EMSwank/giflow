class GifsController < ApplicationController
  def new
  end

  def index
    @gifs = Gif.all
  end

  def create
  end

  def destroy
  end
end
