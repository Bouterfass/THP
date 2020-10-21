require 'csv'
require 'json'
require 'pry'


class Gossip

    attr_accessor :auteur, :potin

    def initialize(auteur, content)
        @auteur = auteur
        @potin = content
    end

    def save
        #save into a csv file
        CSV.open("./db/gossip.csv", "ab") do |csv|
            csv << [@auteur, @potin]
        end
    end  

    def self.all
        all_gossips = []
        CSV.read("./db/gossip.csv").each do |csv_line|
          all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end
        return all_gossips
    end


    def self.find(id)
       self.all[id - 1]
    end

    def self.update(id, auteur, potin)
        update = self.all
        update[id - 1].auteur = auteur
        update[id - 1].potin = potin
        CSV.open('./db/gossip.csv', 'w'){ |line| line = ''}
        CSV.open('./db/gossip.csv', 'w'){ |line| line = update.each(&:save)}
    end
end

