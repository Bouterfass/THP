require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

game = Game.new("Youcef")

while game.is_still_ongoing? && (game.enemies[0].life_points > 0 || game.enemies[1].life_points > 0 || game.enemies[2].life_points > 0 || game.enemies[3].life_points > 0) 
    system('clear')
    game.menu
    game.menu_choice
    game.enemies_attack
    puts "                              [ENTREE] pour continuer"
    gets.chomp
    

end

game.end