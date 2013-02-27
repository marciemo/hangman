require './lib/player'
require './lib/display'
require './lib/game'
require './lib/word_manager'

player = Player.new("Player 1")
game = Game.new
word_manager = WordManager.new(['cat','dog','marmoset','malifluous'])
display = Display.new(word_manager)

puts "Let's play some hangman!"

until word_manager.winner? || display.loser?
  puts word_manager.wrong_guesses.join('')
  puts display
  puts word_manager
  puts "Guess a letter:"
  if word_manager.guess(gets.chomp[0]) == false
    display.add_body_part
    puts "Wrong!"
  end
end
puts display
puts word_manager
if word_manager.winner?
  puts "Phew, you lived!"
else
  puts "Bummer, you dead!"
end