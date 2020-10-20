class Game

    attr_accessor :player1, :player2, :board

    def initialize(p1, p2)
      @player1 = p1
      @player2 = p2
      @board = Board.new

    end

    def start
        tour = 0
        while @board.victory == false && tour <= 8
            system('clear')
            @board.show
            tour%2 == 0 ? (puts "Au tour de " + @player1.name) : (puts "Au tour de " + @player2.name)
            tour%2 == 0 ? @board.set_case_value(@player1.ask_place, @player1.symbole.green) : @board.set_case_value(@player2.ask_place, @player2.symbole.red)
            @board.show
            tour += 1
        end

        if tour == 9 && @board.victory == false
            puts "EGALITE !"
          elsif tour%2 == 0
            puts @player2.name + " A GAGNE!"
          else
            puts @player1.name + " A GAGNE!"
        end

    end
end
