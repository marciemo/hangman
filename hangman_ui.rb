require './lib/display'
require './lib/game'
require './lib/word_manager'

game = Game.new
word_manager = WordManager.new(['cat','dog','marmoset','malifluous', 'apartment', 'orange', 'game', 'antidisestablishmentarianism', 'big', 'happy', 'hippocratic'])
hangman = Hangman.new(word_manager)

puts "Let's play some hangman!"

until word_manager.winner? || hangman.loser?
  puts word_manager.wrong_guesses.join('')
  puts hangman
  puts word_manager
  puts "Guess a letter:"
  unless word_manager.guess(gets.chomp[0])
    hangman.add_body_part
    puts "Wrong!"
  end
end
puts hangman
puts word_manager
if word_manager.winner?
  puts "Phew, you lived!"
else
  puts "Bummer, you dead!"
end