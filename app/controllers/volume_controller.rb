class VolumeController < ApplicationController
  def index
    @volumes = Volume.search(params[:search]).page(params[:page]).per(10)
  end

  def show
    @volume = Volume.find(params[:id])
  end

  def search; end
end
