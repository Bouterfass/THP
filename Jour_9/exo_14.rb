puts "Choisis un nombre :"
print "> "
nombre = gets.chomp.to_i

while nombre >= 0 do
    puts nombre
    nombre -=1
end