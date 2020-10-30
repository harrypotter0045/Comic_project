class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.create(params[:search].permit(:keyword))
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:search)
  end
end
