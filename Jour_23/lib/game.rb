require 'pry'

require_relative 'player'

class Game

    attr_accessor :human_player, :enemies

    def initialize(name)
        @enemies = [Player.new("enemie 1"), Player.new("enemie 2"), Player.new("enemie 3"), Player.new("enemie 4")]
        @human_player = HumanPlayer.new(name)
    end

    def kill_player(player)
       return @enemies.delete(player)
    end

    def is_still_ongoing?
        if !@enemies.empty? || @human_player.life_points > 0
            return true
        end
        return false
    end

    def show_players

        puts "=> Vous avez " + @human_player.life_points.to_s + " pdv et une arme de niveau " + @human_player.weapon_level
        puts "--------------------------"
        @enemies.each do |e|
            puts "=>" + e.name + " a " + e.life_points.to_s + " pdv."
        end
    end

    def menu
        if @human_player.life_points > 0 && (@enemies[0].life_points > 0 || @enemies[1].life_points > 0 || @enemies[2].life_points > 0 || @enemies[3].life_points > 0) 
    
            puts "---------------------------------------------------------"
            puts ""
            puts ""
            puts "Votre état : " + @human_player.life_points.to_s + " pdv et une arme de niveau " + @human_player.weapon_level.to_s + "."
            puts "Quelle action veux-tu effectuer ?"
            
            puts ""
            puts "a - chercher une meilleure arme"
            puts "b - chercher à se soigner"
            puts ""
            puts ""
            puts "attaquer un joueur en vue :"
            puts ""

            @enemies.each do |e|
                if e.life_points <= 0
                    kill_player(e.name)
                end
                e.life_points > 0 ? (puts (e.name.split[1].to_i).to_s + " - " + e.name + " (" + e.life_points.to_s + " pdv)") : (puts "")
            end
        end
    end

    def menu_choice
       
            puts ""
            puts "Votre choix "
            print "> "
            choix = gets.chomp

            case choix
                when "a"
                    @human_player.search_weapon
                    puts "                              [ENTREE] pour continuer"
                    gets.chomp
                when "b"
                    @human_player.search_health_pack
                    puts "                              [ENTREE] pour continuer"
                    gets.chomp
                when "1"
                    @human_player.attacks(@enemies[0])
                when "2"
                    @human_player.attacks(@enemies[1])
                when "3"
                    @human_player.attacks(@enemies[2])
                when "4"
                    @human_player.attacks(@enemies[3])
            end
            puts ""
    
    end


    def enemies_attack
        if @enemies[0].life_points > 0 || @enemies[1].life_points > 0 || @enemies[2].life_points > 0 || @enemies[3].life_points > 0
            
            @enemies.each do |p|
                puts "Les ennemis attaquent ! "
                
                if p.life_points > 0
                    p.attacks(@human_player)
                    
                    if @human_player.life_points <= 0
                        puts "DEFAITE! Tu t'es fait avoir !"
                        break 
                    end
                end
            end
        end
       
    end

    def end
        if (@enemies[0].life_points <= 0 && @enemies[1].life_points <= 0 && @enemies[2].life_points <= 0 && @enemies[3].life_points <= 0) 
            puts "BRAVO! Tu as gagné !"
        end
        if !@enemies.empty? && @human_player.life_points <= 0
            puts "LOSER!"
        end
    end
end

