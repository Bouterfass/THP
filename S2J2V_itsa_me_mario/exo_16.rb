puts "Quelle est ton année de naissance ?"
print "> "

naissance = gets.chomp.to_i
annee = naissance

while annee <= 2020
    puts "Il y #{2020 - annee} ans, tu avais #{annee - naissance} ans!"
    annee += 1
end