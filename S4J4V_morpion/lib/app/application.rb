
class Application

  def initialize
    puts "On lance une partie"
  end

  def launch_game

    p1 = Player.new
    p2 = Player.new

    game = Game.new(p1, p2)
    system('clear')
    game.start
    puts "Voulez-vous rejouez? (O/N) "
    print '> '
    choix = gets.chomp
    while choix != 'O' && choix != 'N'
      puts "J'ai pas compris"
      print '> '
      choix = gets.chomp
    end

    while choix == 'O'
        system('clear')
        game = Game.new(p1, p2)
        game.start
        puts "Voulez-vous rejouez? (O/N) "
        print '> '
        choix = gets.chomp
        while choix != 'O' && choix != 'N'
          puts "J'ai pas compris"
          print '> '
          choix = gets.chomp
        end
    end
  end
end
