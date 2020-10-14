require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



player1 = Player.new("José")
player2 = Player.new("Josiane")

while (player1.life_points > 0 && player2.life_points > 0)
    puts "\nVoici l'état de nos deux combattants : "
    puts " - " + player1.show_state
    puts " - " + player2.show_state
    puts ""
    puts "Passons à la phase d'attaque !"
    player2.attacks(player1)
    if player1.life_points <= 0
        break 
    end
    player1.attacks(player2)


end

