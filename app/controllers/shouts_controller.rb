class ShoutsController < ApplicationController
  
  def index 
    @hamburger = Shout.all 
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
