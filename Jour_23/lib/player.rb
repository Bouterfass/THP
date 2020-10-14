class Player

    attr_accessor :name, :life_points

    def initialize(name)
        @name = name 
        @life_points = 10
    end

    def show_state
        @name + " a " + @life_points.to_s + " points de vie."
    end

    def get_damages(damages)
        @life_points -= damages
        if @life_points <= 0
            puts @name + " a été tué !"
        end
    end

    def attacks(player)
        damages = compute_damage
        puts @name + " attaque " + player.name + " et lui inflige " + damages.to_s + " pdv!"
        player.get_damages(damages)
    end

    def compute_damage
        return rand(1..6)
    end
end

class HumanPlayer < Player 

    attr_accessor :weapon_level

    def initialize(name)
        super(name)
        @weapon_level = 1
        @life_points = 100
    end

    def show_state
        @name + " a " + @life_points.to_s + " points de vie et une arme de niveau " + @weapon_level.to_s + "."
    end

    def compute_damage
        return rand(1..6) * @weapon_level
    end

    def search_weapon
        new_weapon = rand(1..6)
        puts "Tu as trouvé une nouvelle arme de niveau " + new_weapon.to_s + "."
        if new_weapon > @weapon_level
            puts "Youhou! elle est meilleure que ton arme actuelle: tu la prends!"
            return @weapon_level = new_weapon
        else
            puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."          
        end
    end

    def search_health_pack
        health_dice = rand(1..6)

        if health_dice == 1
            puts "Tu n'as rien trouvé..."
        elsif health_dice >= 2 && health_dice <= 5
            puts "Bravo, tu as trouvé un pack de +50 points de vie !"
            @life_points += 50
            if @life_points > 100
                @life_points = 100
            end
        else
            puts "Waoww, tu as trouvé un pack de +80 points de vie !"
            @life_points += 80
            if @life_points > 100
                @life_points = 100
            end
        end

    end
end