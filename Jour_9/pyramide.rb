puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
etage = gets.chomp.to_i

puts "Voici la pyramide :"

i = 1

while i <= etage 
    puts " " * (etage - i) + "#" * i
    i += 1
end
