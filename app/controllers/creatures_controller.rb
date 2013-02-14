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
    @creatures = Creature.all
  end

  def update
    @creature = Creature.find(params[:id])
    #need to cleanup string -> array -> string stuff... 
    params[:creature][:friends].gsub!(/(,|\"|\\|\[|\])/, '')
    
    @creature.update_attributes(params[:creature])
    #save as array
    @creature.friends = params[:creature][:friends].split(' ')
    @creature.save

    # now save creature is saved as a friend too
    @creature.friends.each do |f|
      c = Creature.find_by_name(f)
      if c
        if c.friends && f != @creature.name
          unless c.friends.include?(@creature.name)
            c.friends << @creature.name
            c.save
          end
        else 
          c.friends = [ @creature.name ]
          c.save
        end
        puts c.inspect
      end
    end

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