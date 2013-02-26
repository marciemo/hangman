class WordManager
  attr_reader :all
  def initialize(words)
    @all = words
    @current_word = ""
    new_word
    @guesses = []
  end

  def new_word
    @current_word = @all.sample
  end

  def to_s
    @current_word.split('').map do |letter|
      @guesses.include?(letter) ? letter : '_'
    end.join(' ')
  end

  def guess(letter)
    @guesses << letter
  end

end