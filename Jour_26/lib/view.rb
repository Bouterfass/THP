require 'gossip'
require 'pry'

class View

    def create_gossip
        puts "Qui est l'auteur du potion ?"
        print "> "
        auteur = gets.chomp
        puts ""
        puts "Quel est le potin ?"
        print "> "
        potin = gets.chomp

        return params = {auteur: auteur, potin: potin}
    end

    def index_gossips(array)
        array.each do |a|
            puts "Voici un potin de " + a.auteur + ": " + a.potin + "."
        end
    end

    def delete
        puts "Quel auteur voulez-vous supprimer"
        print "> "
        auteur = gets.chomp
        return auteur 
    end
end

