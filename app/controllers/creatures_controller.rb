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

  def edit
    @creature = Creature.find(params[:id])
  end

  def update
    @creature = Creature.find(params[:id])
    puts params.inspect
    @creature.update_attributes(params[:creature])
    if @creature.persisted? 
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @creature = Creature.find(params[:id]).destroy
    redirect_to root_path
  end

end