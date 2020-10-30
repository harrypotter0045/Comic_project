class IssuesController < ApplicationController
  def index
    @issues = Issue.all.page(params[:page]).per(10)
  end

  def show
    @issue = Issue.find(params[:id])
  end
end
