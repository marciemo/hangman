require './lib/player.rb'
require './lib/display.rb'

player = Player.new("Player 1")
game = Game.new
display = Display.new

puts "Let's play some hangman!"

until display.win? || display.lose?
  puts display
end

if display.win?
  puts "Great job, you lived!"
else
  puts "Bummer, you dead!"
end