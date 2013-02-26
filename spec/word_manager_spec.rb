require 'spec_helper'

describe WordManager do
  context '#initialize' do
    it 'initializes the WordManager from an array of words' do
      word_manager = WordManager.new(['word','more'])
      word_manager.should be_an_instance_of WordManager
    end
  end

  context '#random' do
    it 'returns a random word from its store' do
      word_manager = WordManager.new(['another','word'])
      word_manager.all.should include(word_manager.random)
    end
  end

end