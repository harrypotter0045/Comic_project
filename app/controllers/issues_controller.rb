class IssuesController < ApplicationController
  def index
    @issues = Issue.search(params[:search]).page(params[:page]).per(10)
  end

  def show
    @issue = Issue.find(params[:id])
  end
end
