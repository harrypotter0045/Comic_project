class CharacterController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def show_by_issue
    @characters = Character.where(issue_id: params[:issue_id])
  end
end
