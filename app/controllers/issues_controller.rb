class IssuesController < ApplicationController
  max_paginates_per 10
  def index
    @issues = Issue.all.page(params[:page]).per(10)
    @issues = Issue.includes(:volume).all
  end

  def show
    @issue = Issue.find(params[:id])
  end
end
