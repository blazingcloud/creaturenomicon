require 'spec_helper'

describe Creature do
  before do
    @valid_attributes = {name: "Tyra", description:"Queen of BlazingClound", habitat:"BlazingCloud"}
  end

  context "when there is a valid creature" do 
    subject(:valid_creature) { Creature.new(@valid_attributes) }
    it { should be_valid } 
  end

  context "when there is an invalid creature" do
    subject(:invalid_creature) { Creature.new }
    it { should_not be_valid } 
  end
end
