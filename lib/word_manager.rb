class WordManager
  attr_reader :all, :wrong_guesses
  def initialize(words)
    @all = words
    @current_word = ""
    new_word
    @correct_guesses = []
    @wrong_guesses = []

  end

  def new_word
    @current_word = @all.sample
  end

  def winner?
    @current_word.split('').each do |letter|
      if !@correct_guesses.include?(letter)
        return false
      end 
    end
    true
  end 

  def to_s
    @current_word.split('').map do |letter|
      @correct_guesses.include?(letter) ? letter : '_'
    end.join(' ')
  end

  def guess(letter)
    if @current_word.split('').include?(letter)
        @correct_guesses << letter
        true
    else
        @wrong_guesses << letter
        false  
    end
  end

end