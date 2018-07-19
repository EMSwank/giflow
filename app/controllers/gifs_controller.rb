class GifsController < ApplicationController
  before_action :require_user, only: [:index]
  before_action :require_admin, except: [:index]

  def index
    @gifs = Gif.all
  end
end
