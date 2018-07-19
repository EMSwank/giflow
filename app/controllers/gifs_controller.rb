class GifsController < ApplicationController
  before_action :require_user, only: [:index]
  before_action :require_admin, except: [:index]
  
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
