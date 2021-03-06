class CharacterController < ApplicationController
  def index
    @characters = Character.search(params[:search], params[:character]).page(params[:page]).per(10)
  end

  def show
    @character = Character.find(params[:id])
  end

  def show_by_issue
    @characters = Character.where(issue_id: params[:issue_id])
  end
end
