puts "Quelle est ton année de naissance ?"
print "> "

naissance = gets.chomp.to_i
annee = naissance

while annee < 2020
    if (2020 - annee) == (annee - naissance)
        puts "Il y a #{2020 - annee}, tu avais la moitié de l'âge que tu as aujourd'hui."
    else
        puts "Il y #{2020 - annee} ans, tu avais #{annee - naissance} ans!"
    end
    annee += 1
end