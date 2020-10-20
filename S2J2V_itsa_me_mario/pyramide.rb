puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
etage = gets.chomp.to_i

while etage <= 1 || etage > 25
    puts "La taille doit être comprise entre 1 et 25"
    print "> "
    etage = gets.chomp.to_i
end

puts "Voici la pyramide :"

i = 1

while i <= etage
    puts " " * (etage - i) + "#" * i
    i += 1
end
