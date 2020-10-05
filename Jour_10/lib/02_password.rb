def signup
    puts "Choisissez votre MDP :"
    print "> "
    password = gets.chomp
    return password
end

def login
    password = signup
    puts "Entrez votre MDP : "
    print "> "
    mdp = gets.chomp
    while mdp != password
        puts "Erreur, veuillez tapez le bon MDP"
        print "> "
        mdp = gets.chomp
    end
end

def welcome_screen
    login
    puts "Bienvenue dans votre zone secrète !"
end

welcome_screen