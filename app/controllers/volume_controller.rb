class VolumeController < ApplicationController
  max_paginates_per 10
  def index
    @volumes = Volume.all.page(params[:page]).per(10)
  end

  def show
    @volume = Volume.find(params[:id])
  end
end
