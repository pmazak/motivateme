class GoalsController < ApplicationController
  def create
    goal = Goal.new(:person => "Me", :text => params[:text])
    goal.save    
    @message = goal
  end
  def index 
    @goals = Goal.all
    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @goals }
    end
  end
end
