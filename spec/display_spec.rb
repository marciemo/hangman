require 'spec_helper'

describe Hangman do

  context '#initialize' do
    it 'initializes the display with an empty hangman picture, taking a wordlist object as an argument' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.to_s.should eq output
    end
  end

  context '#add_body_part' do
    it 'adds a head to the hangman' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.add_head
      output[30] = "/"
      output[31] = "\\"
      output[57] = "\\"
      output[58] = "/"
      hangman.to_s.should eq output
    end

    it 'adds a neck to the hangman' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.add_neck
      output[85] = "|"
      hangman.to_s.should eq output
    end

    it 'adds a left arm to the hangman' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.add_left_arm
      4.times { |i| output[109+i] = "-" }
      hangman.to_s.should eq output
    end

    it 'adds a right arm to the hangman' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.add_right_arm
      3.times { |i| output[113+i] = "-" }
      hangman.to_s.should eq output
    end

    it 'adds a trunk to the hangman' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.add_trunk
      output[139] = "|"
      output[166] = "|"
      hangman.to_s.should eq output
    end

    it 'adds a left leg to the hangman' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.add_left_leg
      output[192] = "/"
      output[218] = "/"
      hangman.to_s.should eq output
    end

    it 'adds a right leg to the hangman' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.add_right_leg
      output[193] = "\\"
      output[221] = "\\"
      hangman.to_s.should eq output
    end
  end

  context '#game_results' do
    it 'determines if player has lost the game' do
      words = WordManager.new(['dog'])
      hangman = Hangman.new(words)
      hangman.loser?.should be false
      7.times { |i| words.guess('a') }
      hangman.loser?.should be true
    end
  end
end