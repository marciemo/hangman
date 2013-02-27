require 'spec_helper'

describe WordManager do
  context '#initialize' do
    it 'initializes the WordManager from an array of words' do
      word_manager = WordManager.new(['word','more'])
      word_manager.should be_an_instance_of WordManager
    end
  end

  context '#new_word' do
    it 'returns a new word at random from its store' do
      word_manager = WordManager.new(['another','word'])
      word_manager.all.should include(word_manager.new_word)
    end
  end

  context '#display' do
    it 'displays a number of spaces corresponding to the letters in a selected word' do
      Array.any_instance.stub(:sample).and_return('cat')
      word_manager = WordManager.new([''])
      word_manager.to_s.should eq '_ _ _'
    end

    it 'substitutes a letter for a space when a correct choice is made' do
      Array.any_instance.stub(:sample).and_return('cat')
      word_manager = WordManager.new([''])
      word_manager.guess('c')
      word_manager.to_s.should eq 'c _ _'
    end

    it 'returns word completed message to SOMEWHERE if all correct letters are chosen (no more spaces)' do
      Array.any_instance.stub(:sample).and_return('cat')
      word_manager = WordManager.new([''])
      word_manager.winner?.should be false
      word_manager.guess('c')
      word_manager.guess('a')
      word_manager.guess('t')
      word_manager.winner?.should be true
    end
    
  end

end