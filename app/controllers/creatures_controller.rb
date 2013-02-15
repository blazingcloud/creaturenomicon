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
    params[:creature_friends].gsub!(/(,|\"|\\|\[|\])/, '')

    #not allow creature to friend themselves
    re = Regexp.new(@creature.name)
    params[:creature_friends].gsub!(re, '')

    params[:creature][:friends] = params[:creature_friends].split(' ')
    @creature.update_attributes(params[:creature])

    # now save creature is saved as a friend too
    @creature.friends.each do |friend|
      ctmp = Creature.find_by_name(friend)
      if ctmp
        if ctmp.friends 
          unless ctmp.friends.include?(@creature.name) 
            ctmp.friends << @creature.name
            ctmp.save
          end
        else 
          ctmp.friends = [ @creature.name ]
          ctmp.save
        end
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