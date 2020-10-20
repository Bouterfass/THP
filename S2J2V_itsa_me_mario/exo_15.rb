puts "Quelle est ton année de naissance ?"
print "> "

naissance = gets.chomp.to_i
annee = naissance

while annee <= 2020
    puts "En #{annee} tu avais #{annee - naissance} ans!"
    annee += 1
end