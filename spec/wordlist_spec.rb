require 'spec_helper'

describe Wordlist do
  context '#initialize' do
    it 'initializes the wordlist from an array of words' do
      wordlist = Wordlist.new(['word','more'])
      wordlist.should be_an_instance_of Wordlist
    end
  end

  context '#random' do
    it 'returns a random word from its store' do
      wordlist = Wordlist.new(['another','word'])
      wordlist.all.should include(wordlist.random)
    end
  end

end