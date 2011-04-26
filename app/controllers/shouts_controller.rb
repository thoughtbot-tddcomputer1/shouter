class ShoutsController < ApplicationController
  
  def index 
    @shouts = Shout.top5 
    @shout = Shout.new
    
  end
  
  def new
    @shout = Shout.new
  end

  def create
    @shout = Shout.new(params[:shout])
    @shout.save 
    redirect_to shouts_path, :notice => "Shout Accepted"
  end
  
end
