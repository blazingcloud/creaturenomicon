class WelcomeController < ApplicationController

  def index

    # Right now we're showing all creatures
    @creatures = Creature.all

    respond_to do |format|
      format.js
      format.html # index.html.erb
    end

  end #end index

end