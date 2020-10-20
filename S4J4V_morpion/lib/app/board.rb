
class Board

    attr_accessor :cases, :player

    def initialize
        @cases = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

    def show
        puts " " + " "*3 + " "*2 + "A" + " " * 2 + " " + " "*2 + "B" + " " * 2 + " " + " "*2 + "C"+ " " * 2
        puts ""
        puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
        puts "1" + " "*3 + " "*2 + cases[0].to_s + " " * 2 + "|" + " "*2 + cases[1].to_s + " " * 2 + "|" + " "*2 + cases[2].to_s + " " * 2
        puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
        puts " " + " "*3 + "-"*17
        puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
        puts "2" + " "*3 + " "*2 + cases[3].to_s + " " * 2 + "|" + " "*2 + cases[4].to_s + " " * 2 + "|" + " "*2 + cases[5].to_s + " " * 2
        puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
        puts " " + " "*3 + "-"*17
        puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
        puts "3" + " "*3 + " "*2 + cases[6].to_s + " " * 2 + "|" + " "*2 + cases[7].to_s + " " * 2 + "|" + " "*2 + cases[8].to_s + " " * 2
        puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
    end

    def set_case_value(choix, symbole)
          @cases[choix - 1] = symbole
    end

    def is_playable?(choix)
      return @cases[choix - 1] == " " ? true : false
    end

    def victory
      if @cases[0] == @cases[1] && @cases[1] == @cases[2] && (@cases[0] != " " && @cases[1] != " " && @cases[2] != " ")
        return true
      end
      if @cases[3] == @cases[4] && @cases[4] == @cases[5] && (@cases[3] != " " && @cases[4] != " " && @cases[5] != " ")
        return true
      end
      if @cases[6] == @cases[7] && @cases[7] == @cases[8] && (@cases[6] != " " && @cases[7] != " " && @cases[8] != " ")
        return true
      end

      if @cases[0] == @cases[3] && @cases[3] == @cases[6] && (@cases[0] != " " && @cases[3] != " " && @cases[6] != " ")
        return true
      end
      if @cases[1] == @cases[4] && @cases[4] == @cases[7] && (@cases[1] != " " && @cases[4] != " " && @cases[7] != " ")
        return true
      end
      if @cases[2] == @cases[5] && @cases[5] == @cases[8] && (@cases[2] != " " && @cases[5] != " " && @cases[8] != " ")
        return true
      end

      if @cases[0] == @cases[4] && @cases[4] == @cases[8] && (@cases[0] != " " && @cases[4] != " " && @cases[8] != " ")
        return true
      end
      if @cases[2] == @cases[4] && @cases[4] == @cases[6] && (@cases[2] != " " && @cases[4] != " " && @cases[6] != " ")
        return true
      end
      return false
    end

    def reset
      @cases = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end
end
