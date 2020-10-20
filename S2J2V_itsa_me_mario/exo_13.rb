puts "En quelle année tu es née ?"
print "> "
annee = gets.chomp.to_i

while annee <= 2020
    puts annee
    annee +=1
end