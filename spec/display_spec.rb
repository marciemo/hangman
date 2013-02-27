require 'spec_helper'

describe Display do

  context '#initialize' do
    it 'initializes the display with an empty hangman picture, taking a wordlist object as an argument' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.to_s.should eq output
    end
  end

  context '#add_body_part' do
    it 'adds a head to the display' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.add_head
      output[30] = "/"
      output[31] = "\\"
      output[57] = "\\"
      output[58] = "/"
      display.to_s.should eq output
    end
    
    it 'adds a neck to the display' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.add_neck
      output[85] = "|"
      display.to_s.should eq output
    end

    it 'adds a left arm to the display' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.add_left_arm
      4.times { |i| output[109+i] = "-" }
      display.to_s.should eq output
    end

    it 'adds a right arm to the display' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.add_right_arm
      3.times { |i| output[113+i] = "-" }
      display.to_s.should eq output
    end

    it 'adds a trunk to the display' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.add_trunk
      output[139] = "|"
      output[166] = "|"
      display.to_s.should eq output
    end

    it 'adds a left leg to the display' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.add_left_leg
      output[192] = "/"
      output[218] = "/"
      display.to_s.should eq output
    end

    it 'adds a right leg to the display' do
      output = "    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n"
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.add_right_leg
      output[193] = "\\"
      output[221] = "\\"
      display.to_s.should eq output
    end
  end

  context '#game_results' do
    it 'determines if player has lost the game' do
      words = WordManager.new(['dog'])
      display = Display.new(words)
      display.loser?.should be false
      7.times { |i| words.guess('a') }
      display.loser?.should be true
    end
  end
end