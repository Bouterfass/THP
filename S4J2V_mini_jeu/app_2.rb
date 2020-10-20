require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Josiane")

user = HumanPlayer.new("Youcef")

while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
    system('clear')
    puts "---------------------------------------------------------"
    puts ""
    puts ""
    puts "Votre état : " + user.show_state
    puts "Quelle action veux-tu effectuer ?"
    
    puts ""
    puts "a - chercher une meilleure arme"
    puts "b - chercher à se soigner"
    puts ""
    puts ""
    puts "attaquer un joueur en vue :"
    puts ""
    player1.life_points > 0 ? (puts "0 - " + player1.show_state) : (puts "")
    player2.life_points > 0 ? (puts "1 - " + player2.show_state) : (puts "")

    puts ""
    puts "Votre choix "
    print "> "
    choix = gets.chomp

    case choix
        when "a"
            user.search_weapon
            puts "                              [ENTREE] pour continuer"
            gets.chomp
        when "b"
            user.search_health_pack
            puts "                              [ENTREE] pour continuer"
            gets.chomp
        when "0"
            user.attacks(player1)
        when "1"
            user.attacks(player2)
    end
    puts ""
  
    if player1.life_points > 0 || player2.life_points > 0
        [player1, player2].each do |p|
            if p.life_points > 0
                puts "Les ennemis attaquent ! "
                p.attacks(user)
                if user.life_points <= 0
                    puts "DEFAITE! Tu t'es fait avoir !"
                    break 
                end
            end
        end
    end

    
    puts "                              [ENTREE] pour continuer"
    gets.chomp
    
    if player1.life_points <= 0 && player2.life_points <= 0
        puts "BRAVO! Tu as gagné !"
    end
    
end