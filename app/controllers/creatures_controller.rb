class CreaturesController < ApplicationController
  def new 
    @creature = Creature.new
  end

  def create
    @creature = Creature.new(params[:creature]) 
    if @creature.save
      redirect_to root_path
    else
      render 'new'
    end
  end

end