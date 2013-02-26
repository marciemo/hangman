require 'spec_helper'

describe Game do
  context '#over?' do
    it 'should decide when the game is over' do
      game = Game.new
      game.over?.should eq false
    end
  end  
end