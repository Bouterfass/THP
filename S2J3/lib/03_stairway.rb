def play  
goal = 0
    tours = 1
    while goal <= 10
        tours += 1
        dice = rand(1..6)
        if dice == 1
            if goal == 0
                goal = 0
            else
                goal = goal - 1 
            end
            puts "Vous avez tirez 1, vous êtes descendu d'une marche, vous êtes actuellement à la marche "  + goal.to_s + "!"
        end
        if (dice == 2) || (dice == 3) || (dice == 4)
            puts "Vous avez tiré " + dice.to_s + " vous restez à la même place, vous êtes donc toujours à la marche "+ goal.to_s + "!"
        end
        if (dice == 5) || (dice == 6)
            puts "Vous avez tiré " + dice.to_s + ". Félicitation, vous montez une mache! Vous êtes donc toujours à la marche "+ goal.to_s + "!"
            goal +=1
        end
    end
    puts "Bravo! Vous êtes arrivé au sommet en "+ tours.to_s + " tours!"
    return tours
end



def average_finish_time
    array = []
    sum = 0
    100.times do
        array << play
    end

    array.each {|a| sum+=a}
    return sum / 100
end

puts "Il faut en moyenne " +average_finish_time.to_s+ " tours pour arriver au sommet!"