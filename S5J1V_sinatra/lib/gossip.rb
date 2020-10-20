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
        i = 0
        CSV.read("./db/gossip.csv").each do |csv_line|
            if i + 1 == id
                return csv_line
            end
            i += 1
        end
        return puts "id_not_found"
    end

    def self.update(id, auteur, potin)
        update = []
        CSV.read("./db/gossip.csv").each_with_index do |line, index|
            if id.to_i - 2 == index
                update << [auteur, potin]
            else
                update << [line[0], line[1]]
            end
        end
    
        CSV.open("./db/gossip.csv", "w") do |csv|
            update.each do |line|
                csv << line
            end
        end
    end
end

