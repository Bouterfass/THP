number_of_hours_worked_per_day = 10 #stock le nombre d'heures par jours dans une variable
number_of_days_worked_per_week = 5 #stock le nombre de jours par semaine dans une variable
number_of_weeks_in_THP = 11 #stock le nombre de semaines dans une variable

puts "Travail : #{number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}" #Multiplie le contenu des 3 variables pour obtenir le nombre d'heure total effectuées à THP 
puts "Et en minutes ça fait : #{number_of_minutes_in_an_hour * number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}" #Cette ligne de code créer une erreur car la variable n'est pas définit

#fait la même chose que l'exo suivant, sauf qu'il multiplie les valeur contenu dans les variable