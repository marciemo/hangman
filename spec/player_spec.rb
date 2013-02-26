require 'spec_helper'

describe Player do
  context '#initialize' do
    it 'initializes the player with a player name' do
      player = Player.new("Player 1")
      player.should be_an_instance_of Player
    end 
  end
end