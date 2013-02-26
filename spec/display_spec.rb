require 'spec_helper'

describe Display do

  context '#initialize' do
    it 'initializes the display with an empty hangman picture, taking a wordlist object as an argument' do
      output = '    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n'
      words = Wordlist.new(['dog'])
      display = Display.new(words)
      display.to_s.should eq output
    end
  end

  context '#add_body_part' do
    it 'adds a head to the display' do
      output = '    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n'
      words = Wordlist.new(['dog'])
      display = Display.new(words)
      display.add_head
      output[31] = "/\\"
      output[60] = "\\/"
      display.to_s.should eq output
    end
    it 'adds a neck to the display' do
      output = '    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n'
      words = Wordlist.new(['dog'])
      display = Display.new(words)
      display.add_neck
      output[88] = "|"
      display.to_s.should eq output
    end
    it 'adds a left arm to the display' do
      output = '    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n'
      words = Wordlist.new(['dog'])
      display = Display.new(words)
      display.add_left_arm
      output[113] = "----"
      display.to_s.should eq output
    end
    it 'adds a right arm to the display' do
      output = '    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n'
      words = Wordlist.new(['dog'])
      display = Display.new(words)
      display.add_right_arm
      output[117] = "---"
      display.to_s.should eq output
    end
    it 'adds a trunk to the display' do
      output = '    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n'
      words = Wordlist.new(['dog'])
      display = Display.new(words)
      display.add_trunk
      output[144] = "|"
      output[172] = "|"
      display.to_s.should eq output
    end
    it 'adds a left leg to the display' do
      output = '    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n'
      words = Wordlist.new(['dog'])
      display = Display.new(words)
      display.add_left_leg
      output[199] = "/"
      output[226] = "/"
      display.to_s.should eq output
    end
    it 'adds a right leg to the display' do
      output = '    ________________      \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n                    |     \n              ______|_____\n                          \n                          \n'
      words = Wordlist.new(['dog'])
      display = Display.new(words)
      display.add_right_leg
      output[200] = "\\"
      output[229] = "\\"
      display.to_s.should eq output
    end
  end
end