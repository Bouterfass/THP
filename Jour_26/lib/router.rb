require 'controller'

class Router

    

    def initialize
        @controller = Controller.new
    end
    
    def perform
        puts "BIENVENUE DANS THE GOSSIP PROJECT"
        while true
            puts "Bonjour, que souhaitez-vous faire ?"
            puts ""
            puts "1 - créer un gossip"
            puts "2 - consulter tous les gossip"
            puts "3 - supprimer un gossip"
            puts "4 - quitter l'app"
            puts ""
            print "> "
            choix = gets.chomp.to_i

        
            case choix
                when 1
                    puts "Tu as choisi de créer un gossip" 
                    @controller.create_gossip
                when 2
                    puts "Tu as choisi  d'afficher tout les gossips"
                    @controller.index_gossips
                when 3
                    puts "Tu à choisis de supprimer un gossip"
                    @controller.delete
                when 4
                    puts "À bientôt !"
                    break
                else
                    puts "Ce choix n'existe pas, merci de ressayer" 
            
            end
            
        end
    end

end