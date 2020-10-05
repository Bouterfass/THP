def say_hello(prenom)
    puts "Bonjour " + prenom + "!"
end

def ask_first_name
    puts "Quel est ton prennom ?"
    print "> "
    first_name = gets.chomp
    return first_name  
end


say_hello(ask_first_name)