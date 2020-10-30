class IssuesController < ApplicationController
  def index
    @issues = Issue.all
    @issues = Issue.includes(:volume).all
  end

  def show
    @issue = Issue.find(params[:id])
  end
end
