class WordManager
  attr_reader :all
  def initialize(words)
    @all = words
  end

  def random
    @all.sample
  end

end