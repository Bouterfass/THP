
class Player

    attr_accessor :name, :symbole

    def initialize
        puts "Quel est ton pseudo : "
        print "> "
        name = gets.chomp
        @name = name
        puts "Quel est ton symbole (X ou O) :"
        print "> "
        symbole = gets.chomp
        while symbole != "X" && symbole != "O"
          puts "Ton symbole n'est pas valide :"
          print "> "
          symbole = gets.chomp
        end
        @symbole = symbole

    end

    def ask_place
        puts "quel emplacement souhaites-tu ?"
        print ">"
        case_choosen = gets.chomp

        case case_choosen
            when "A1"
                return 1
            when "B1"
                return 2
            when "C1"
                return 3
            when "A2"
                return 4
            when "B2"
                return 5
            when "C2"
                return 6
            when "A3"
                return 7
            when "B3"
                return 8
            when "C3"
                return 9
            else
                puts "Ceci est une erreur, merci de choisir de faire ton choix entre A1 et C3, ;)"
            end
    end
end
